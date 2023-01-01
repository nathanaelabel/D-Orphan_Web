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
