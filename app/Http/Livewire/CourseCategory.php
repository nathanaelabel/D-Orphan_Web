<?php

namespace App\Http\Livewire;

use App\Models\Skill;
use Livewire\Component;

class CourseCategory extends Component
{
    public $courseCategories;

    public function render()
    {
        return view('livewire.course-category');
    }

    public function mount()
    {
        $this->setCourseCategories();
    }

    public function setCourseCategories()
    {
        $this->courseCategories = Skill::all();
    }
}
