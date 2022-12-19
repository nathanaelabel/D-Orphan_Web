<?php

namespace App\Http\Livewire;

use App\Models\Skill;
use Livewire\Component;
use Livewire\WithPagination;

class CourseCategory extends Component
{
    public $courseCategories;
    use WithPagination;
    public function render()
    {
        return view('livewire.course-category',[
            'courseCategories' => Skill::paginate(10)
        ]
        );
    }

    public function mount()
    {
        $this->setCourseCategories();
    }

    public function setCourseCategories()
    {
    }
}
