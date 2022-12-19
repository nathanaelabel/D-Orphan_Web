<?php

namespace App\Http\Livewire;

use App\Models\Course;
use Livewire\Component;

class DetailCourseTutor extends Component
{
    public $courseTutor;
    public function render()
    {
        return view('livewire.detail-course-tutor');
    }

    public function mount($course_id)
    {
        $this->courseTutor = Course::find($course_id);
    }
}
