<?php

namespace App\Http\Livewire;

use App\Models\CourseBooking;
use Livewire\Component;

class DetailCourseBooking extends Component
{
    public $courseBooking, $course_booking_id;

    public function render()
    {
        return view('livewire.detail-course-booking');
    }

    public function mount($course_booking_id)
    {
        $this->courseBooking = CourseBooking::find($this->course_booking_id);
    }

    public function decline($nameTab)
    {
        $this->courseBooking->status = 'canceled';
        $this->courseBooking->save();
        return redirect()->route('dasbor', ['nameTab'=>$nameTab]);
    }

    public function accept($nameTab)
    {
        $this->courseBooking->status = 'ongoing';
        $this->courseBooking->save();
        return redirect()->route('dasbor', ['nameTab'=>$nameTab]);
    }
    
    public function complete($nameTab)
    {
        $this->courseBooking->status = 'complete';
        $this->courseBooking->save();
        return redirect()->route('dasbor', ['nameTab'=>$nameTab]);
    }
}
