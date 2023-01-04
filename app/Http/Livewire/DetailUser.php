<?php

namespace App\Http\Livewire;

use App\Models\Course;
use App\Models\CourseBooking;
use App\Models\Skill;
use App\Models\User;
use Livewire\Component;

class DetailUser extends Component
{
    public $user;
    public $skills = [];
    public $courseBookingDone;

    public function render()
    {
        return view('livewire.detail-user');
    }

    public function mount($user_id)
    {
        if (auth()) {
            if (auth()->user()) {
                if (auth()->user()->phone_number == null || auth()->user()->address == null) {
                    return redirect()->route('user-approve');
                }

                if (auth()->user()->user_type == 'Pengurus Panti') {
                    if (auth()->user()->orphanage->name == null || auth()->user()->orphanage->description == null) {
                        return redirect()->route('user-approve');
                    }
                } elseif (auth()->user()->user_type == 'Tutor') {
                    if (auth()->user()->tutor->bank_account == null || auth()->user()->tutor->description == null || count(auth()->user()->tutor->tutorDayTimeRanges) == 0) {
                        return redirect()->route('user-approve');
                    }
                }
            }
        }

        if (auth()->user()) {
            if (auth()->user()->user_type == 'Tutor') {
                $this->user = User::find($user_id)->orphanage;
            } else {
                $this->user = User::find($user_id)->tutor;
                $getCourseTutors = Course::where('tutor_id', $this->user->id)->pluck('id');
                $this->courseBookingDone = CourseBooking::whereIn('course_id', $getCourseTutors)->where('status', 'complete')->get();
                $this->skills = Skill::whereIn('id', $this->user->courses->pluck('skill_id'))
                ->orderBy('name', 'ASC')->get();
            }
        } else {
            $this->user = User::find($user_id)->orphanage;
        }
    }
}
