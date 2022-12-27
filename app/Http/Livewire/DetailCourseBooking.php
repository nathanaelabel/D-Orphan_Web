<?php

namespace App\Http\Livewire;

use App\Models\CourseBooking;
use Livewire\Component;

class DetailCourseBooking extends Component
{
    public $courseBooking;

    public function render()
    {
        return view('livewire.detail-course-booking');
    }

    public function mount($course_booking_id)
    {
        $this->courseBooking = CourseBooking::find($course_booking_id);
    }
}
