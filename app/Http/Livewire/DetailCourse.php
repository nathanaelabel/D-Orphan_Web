<?php

namespace App\Http\Livewire;

use App\Models\Course;
use Livewire\Component;

class DetailCourse extends Component
{
    public $course;
    public function render()
    {
        return view('livewire.detail-course');
    }

    public function mount($course_id)
    {
        $this->course = Course::find($course_id);
    }
}
