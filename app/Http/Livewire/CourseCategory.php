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
    public $categorySearch;
    public $activeTabCourseCategory;

    public function render()
    {
        if (Auth::user()->tutor) {
            if ($this->activeTabCourseCategory == 'eksplor') {
                if ($this->categorySearch != null) {
                    $this->courseCategories = Skill::where('name', 'like', '%' . $this->categorySearch . '%')->get();
                } else {
                    $this->courseCategories = Skill::all();
                }
            } else {
                $this->coursesTutor = Course::where('tutor_id', auth()->user()->tutor->id)->get();
            }
        } else {
            if ($this->categorySearch != null) {
                $this->courseCategories = Skill::where('name', 'like', '%' . $this->categorySearch . '%')->get();
            } else {
                $this->courseCategories = Skill::all();
            }
        }
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
        }
    }
}
