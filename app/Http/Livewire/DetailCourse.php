<?php

namespace App\Http\Livewire;

use App\Models\Course;
use App\Models\CourseBooking;
use App\Models\Day;
use App\Models\DayTimeRange;
use App\Models\TutorDayTimeRange;
use Livewire\Component;

class DetailCourse extends Component
{
    public $course;
    public $days;
    public $dayTimeRanges;
    public $course_id, $isFromCourseBooking;
    public $courseBookingDone;
    public $tutorScheduleDropdownSort;

    public function render()
    {
        $this->days = [];
        $this->dayTimeRanges = [];
        $this->course = Course::find($this->course_id);

        $getCourseTutors = Course::where('tutor_id', Course::find($this->course_id)->tutor->id)->pluck('id');
        $this->courseBookingDone = CourseBooking::whereIn('course_id', $getCourseTutors)->where('status', 'complete')->get();

        $getIdTutorDayTimeRanges = TutorDayTimeRange::where('tutor_id', Course::find($this->course_id)->tutor->id)->pluck('day_time_range_id')->toArray();
        $getIdDayTimeRanges = DayTimeRange::whereIn('id', $getIdTutorDayTimeRanges)->pluck('day_id');
        $this->days = Day::wherein('id', $getIdDayTimeRanges)->get();

        $this->dayTimeRanges = DayTimeRange::whereIn('id', $getIdTutorDayTimeRanges)
            ->where('day_id', Day::where('day', $this->tutorScheduleDropdownSort)->first()->id)->get();

        $days = $this->days;
        $dayTimeRanges = $this->dayTimeRanges;

       

        return view('livewire.detail-course', compact('days', 'dayTimeRanges'));
    }

    public function mount()
    {

        // if (auth()->user()->phone_number == null || auth()->user()->address == null) {
        //     return redirect()->route('user-approve');
        // }

        // if (auth()->user()->user_type == 'Pengurus Panti') {
        //     if (auth()->user()->orphanage->name == null || auth()->user()->orphanage->description == null) {
        //         return redirect()->route('user-approve');
        //     }
        // } elseif (auth()->user()->user_type == 'Tutor') {
        //     if (auth()->user()->tutor->bank_account == null || auth()->user()->tutor->description == null || count(auth()->user()->tutor->tutorDayTimeRanges)==0) {
        //         return redirect()->route('user-approve');
        //     }
        // }
        if (auth()->user()->is_access == '0') {
            return redirect()->route('user-approve');
        }

        $getIdTutorDayTimeRanges = TutorDayTimeRange::where('tutor_id', Course::find($this->course_id)->tutor->id)->pluck('day_time_range_id')->toArray();
        $getIdDayTimeRanges = DayTimeRange::whereIn('id', $getIdTutorDayTimeRanges)->pluck('day_id');
        $this->days = Day::wherein('id', $getIdDayTimeRanges)->get();
        $this->setTutorScheduleDropwdownSort($this->days->first()->day);
    }

    public function setTutorScheduleDropwdownSort($tutorScheduleDropdownSortNew)
    {
        $this->tutorScheduleDropdownSort = $tutorScheduleDropdownSortNew;
    }
}
