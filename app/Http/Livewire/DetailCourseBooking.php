<?php

namespace App\Http\Livewire;

use App\Models\CourseBooking;
use App\Models\CourseBookingDayTimeRange;
use App\Models\Day;
use App\Models\DayTimeRange;
use Livewire\Component;

class DetailCourseBooking extends Component
{
    public $courseBooking;
    public $course_booking_id;
    public $courseBookingScheduleDropdownSort;
    public $days;
    public $dayTimeRanges;

    public function render()
    {
        $getIdCourseBookingDayTimeRanges = CourseBookingDayTimeRange::where('course_booking_id', $this->course_booking_id)->pluck('day_time_range_id')->toArray();
        $getIdDayTimeRanges = DayTimeRange::whereIn('id', $getIdCourseBookingDayTimeRanges)->pluck('day_id');
        $this->days = Day::whereIn('id', $getIdDayTimeRanges)->get();

        $this->dayTimeRanges = DayTimeRange::whereIn('id', $getIdCourseBookingDayTimeRanges)
        ->where('day_id', Day::where('day', $this->courseBookingScheduleDropdownSort)->first()->id)->get();

        return view('livewire.detail-course-booking');
    }

    public function mount($course_booking_id)
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

        $this->courseBooking = CourseBooking::find($this->course_booking_id);

        $getIdCourseBookingDayTimeRanges = CourseBookingDayTimeRange::where('course_booking_id', $this->course_booking_id)->pluck('day_time_range_id')->toArray();
        $getIdDayTimeRanges = DayTimeRange::whereIn('id', $getIdCourseBookingDayTimeRanges)->pluck('day_id');
        $this->days = Day::whereIn('id', $getIdDayTimeRanges)->get();
        $this->setCourseBookingScheduleDropwdownSort($this->days->first()->day);
    }

    public function setCourseBookingScheduleDropwdownSort($courseBookingScheduleDropdownSortNew)
    {
        $this->courseBookingScheduleDropdownSort = $courseBookingScheduleDropdownSortNew;
    }

    public function decline($nameTab)
    {
        $this->courseBooking->status = 'canceled';
        $this->courseBooking->save();

        return redirect()->route('dasbor', ['nameTab' => $nameTab]);
    }

    public function accept($nameTab)
    {
        $this->courseBooking->status = 'ongoing';
        $this->courseBooking->save();

        return redirect()->route('dasbor', ['nameTab' => $nameTab]);
    }

    public function complete($nameTab)
    {
        $this->courseBooking->status = 'complete';
        $this->courseBooking->save();

        return redirect()->route('dasbor', ['nameTab' => $nameTab]);
    }
}
