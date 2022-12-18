<?php

namespace App\Http\Livewire;

use App\Models\Skill;
use Livewire\Component;

class CourseTutor extends Component
{
    public $courseTutors;
    public $courseCategory;

    public function render()
    {
        return view('livewire.course-tutor');
    }

    public function mount($skill_id)
    {
        $this->courseTutors = Skill::find($skill_id)->courses;
        $this->courseCategory = Skill::find($skill_id);
    }
}
