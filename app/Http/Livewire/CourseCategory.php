<?php

namespace App\Http\Livewire;

use App\Models\Course;
use App\Models\Skill;
use Livewire\Component;
use Illuminate\Support\Facades\Auth;
use Livewire\WithPagination;

class CourseCategory extends Component
{
    use WithPagination;

    public $coursesTutor;
    public $courseCategories;
    public $activeTabCourseCategory;

    public function render()
    {
        return view('livewire.course-category');
    }

    public function mount()
    {
        $this->setTab('eksplor');
    }

    public function setTab($tab)
    {
        if (Auth::user()->tutor) {
            $this->activeTabCourseCategory = $tab;
            if ($this->activeTabCourseCategory == 'eksplor') {
                $this->courseCategories = Skill::all();
            } else {
                $this->coursesTutor = Course::where('tutor_id', auth()->user()->tutor->id)->get();
            }
        } else {
            $this->courseCategories = Skill::all();
        }
    }
}
