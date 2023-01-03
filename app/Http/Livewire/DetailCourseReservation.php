<?php

namespace App\Http\Livewire;

use App\Models\Course;
use App\Models\Day;
use App\Models\Orphan;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class DetailCourseReservation extends Component
{
    public $currentStudent;
    public $studentList;
    public $course;
    public $studentNotRegistered;
    public $days;
    public $dayCount;

    public function render()
    {
        return view('livewire.detail-course-reservation');
    }

    public function mount($course_id)
    {

        if (auth()->user()->phone_number == null || auth()->user()->address == null) {
            return redirect()->route('user-approve');
        }

        if (auth()->user()->user_type == 'Pengurus Panti') {
            if (auth()->user()->orphanage->name == null || auth()->user()->orphanage->description == null) {
                return redirect()->route('user-approve');
            }
        } elseif (auth()->user()->user_type == 'Tutor') {
            if (auth()->user()->tutor->bank_account == null || auth()->user()->tutor->description == null || count(auth()->user()->tutor->tutorDayTimeRanges)==0) {
                return redirect()->route('user-approve');
            }
        }

        $this->studentList = [];

        $this->course = Course::find($course_id);
        $this->studentNotRegistered = Auth::user()->orphanage->orphans->whereNotIn('id', $this->studentList);
        $this->days = Day::all();
        $this->dayCount = 0;
    }

    public function addDay()
    {
        ++$this->dayCount;
    }

    public function addStudent($id)
    {
        array_push($this->studentList, Orphan::find($id));
        $currentStudent = $this->studentNotRegistered->first();
    }
}
