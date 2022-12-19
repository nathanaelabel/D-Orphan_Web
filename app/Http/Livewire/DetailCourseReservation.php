<?php

namespace App\Http\Livewire;

use App\Models\Course;
use App\Models\Day;
use Livewire\Component;

class DetailCourseReservation extends Component
{
    public function render()
    {
        return view('livewire.detail-course-reservation');
    }

    public function mount($course_id)
    {
        $this->course = Course::find($course_id);
        $this->days = Day::all();
    }
}
