<?php

namespace App\Http\Livewire;

use App\Models\Skill;
use App\Models\Course;
use App\Models\User;
use App\Models\Tutor;
use Livewire\Component;

class CourseTutor extends Component
{
    public $courseTutors;
    public $courseCategory;
    public $tutorSearch;
    public $tutor;
    public $user;

    public function render()
    {
     
                if($this->tutorSearch!=null){  

$this->user= User::where('name','like', '%' . $this->tutorSearch . '%')->pluck('id');
$this->tutor = Tutor::whereIn('user_id', $this->user)->pluck('id');
$this->courseTutors = Course::whereIn('tutor_id', $this->tutor)->where('skill_id',$this->skill_id)->get();
$this->courseCategory = Skill::find($this->skill_id);
                }else{
                    $this->courseCategory = Skill::find($this->skill_id);
                    $this->courseTutors = Skill::find($this->skill_id)->courses;
                }
 
        return view('livewire.course-tutor');
    
            }
    public function mount($skill_id)
    {
        $this->skill_id = $skill_id;
    }
}
