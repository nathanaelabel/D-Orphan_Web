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
    public $skillsId = [];
    public $skills = [];
    public $courseBookingDone;
    public $orphans;

    public function render()
    {
        return view('livewire.detail-user');
    }

    public function mount($user_id)
    {
        if (auth()->user()) {
            if (auth()->user()->user_type == 'Tutor') {
                $this->user = User::find($user_id)->orphanage;
                $this->orphans = $this->user->orphans->toArray();
            } else {
                $this->user = User::find($user_id)->tutor;
                $getCourseTutors = Course::where('tutor_id', $this->user->id)->pluck('id');
                $this->courseBookingDone = CourseBooking::whereIn('course_id', $getCourseTutors)->where('status', 'complete')->get();
                $getSkillsId = $this->user->courses->pluck('skill_id');

                for ($i = 0; $i < count($getSkillsId); ++$i) {
                    if (array_search($getSkillsId[$i], $this->skillsId) == null) {
                        array_push($this->skillsId, $getSkillsId[$i]);
                        array_push($this->skills, Skill::find($getSkillsId[$i])->name);
                    }
                }
            }
        } else {
            $this->user = User::find($user_id)->orphanage;
            $this->orphans = $this->user->orphans->toArray();
        }
    }
}
