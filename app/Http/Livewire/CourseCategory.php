<?php

namespace App\Http\Livewire;

use App\Models\Skill;
use Livewire\Component;
use Livewire\WithPagination;

class CourseCategory extends Component
{
    use WithPagination;
    public function render()
    {
        return view('livewire.course-category',[
            'courseCategories' => Skill::all()
        ]
        );
    }
}
