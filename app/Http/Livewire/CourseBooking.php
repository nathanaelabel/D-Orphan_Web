<?php

namespace App\Http\Livewire;

use App\Models\CourseBooking as ModelsCourseBooking;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class CourseBooking extends Component
{
    public $courseBooking;
    public $activeTab;

    public function render()
    {
        return view('livewire.course-booking')->with('courseBooking', $this->courseBooking);
    }

    public function mount()
    {
        $this->activeTab = 'pending';
        $this->courseBooking = ModelsCourseBooking::whereIn('course_id', Auth::user()->tutor->courses->pluck('id'))->where('status', 'pending')->get();
    }

    public function setTab($tab)
    {
        $this->activeTab = $tab;
        $this->courseBooking = ModelsCourseBooking::whereIn('course_id', Auth::user()->tutor->courses->pluck('id'))->where('status', $this->activeTab)->get();
    }
}
