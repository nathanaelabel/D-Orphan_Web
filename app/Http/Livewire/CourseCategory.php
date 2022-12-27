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
    public $categoryKelolaSearch;
    public $activeTabCourseCategory;
    public $categoryDropdownSort;
    public $categoryKelolaDropdownSort;
    public $skills;

    public function render()
    {
        $this->courseCategories = [];
        if (Auth::user()->tutor) {
            if ($this->activeTabCourseCategory == 'eksplor') {
                if ($this->categorySearch != null) {
                    if ($this->categoryDropdownSort == 'Abjad Kategori') {
                        $this->courseCategories = Skill::where('name', 'like', '%'.$this->categorySearch.'%')
                        ->orderBy('name', 'ASC')
                        ->get();
                    } else {
                        $courseOrdered = Course::groupBy('skill_id')
                    ->selectRaw('count(*) as total, skill_id')
                    ->orderBy('total', 'ASC')
                    ->pluck('skill_id')->toArray();

                        if (count($courseOrdered) > 0) {
                            $ids = $courseOrdered;
                            $ids_ordered = implode(',', $ids);
                            $this->courseCategories = Skill::whereIn('id', $courseOrdered)
                        ->where('name', 'like', '%'.$this->categorySearch.'%')
                                                ->orderByRaw("FIELD(id, $ids_ordered)")
                                                ->get();
                        }
                    }
                } else {
                    if ($this->categoryDropdownSort == 'Abjad Kategori') {
                        $this->courseCategories = Skill::orderBy('name', 'ASC')
                        ->get();
                    } else {
                        $courseOrdered = Course::groupBy('skill_id')
                        ->selectRaw('count(*) as total, skill_id')
                        ->orderBy('total', 'ASC')
                        ->pluck('skill_id')->toArray();

                        if (count($courseOrdered) > 0) {
                            $ids = $courseOrdered;
                            $ids_ordered = implode(',', $ids);
                            $this->courseCategories = Skill::whereIn('id', $courseOrdered)
                                                    ->orderByRaw("FIELD(id, $ids_ordered)")
                                                    ->get();
                        }
                    }
                }
            } else {
                $getCategoryKelolaSearch = Skill::where('name', $this->categoryKelolaDropdownSort)->first();

                if ($this->categoryKelolaSearch != null) {
                    $this->coursesTutor = Course::where('tutor_id', auth()->user()->tutor->id)
                                                ->where('skill_id', $getCategoryKelolaSearch->id);

                    $this->coursesTutor->where(function ($search) {
                        return $search->where('hourly_price', 'like', '%' . $this->categoryKelolaSearch . '%')
                            ->orwhere('is_online', 'like', '%' . $this->categoryKelolaSearch . '%')
                            ->orwhere('is_visit', 'like', '%' . $this->categoryKelolaSearch . '%')
                            ->orwhere('description', 'like', '%' . $this->categoryKelolaSearch . '%')
                            ->orwhere('maximum_member', 'like', '%' . $this->categoryKelolaSearch . '%')
                            ->orwhere('tool_price', 'like', '%' . $this->categoryKelolaSearch . '%')
                            ->orwhere('tool_description', 'like', '%' . $this->categoryKelolaSearch . '%')
                            ->orwhere('location', 'like', '%' . $this->categoryKelolaSearch . '%')
                            ->orwhere('name', 'like', '%' . $this->categoryKelolaSearch . '%');
                    });

                    $this->coursesTutor = $this->coursesTutor->get();
                    
                } else {
                    $this->coursesTutor = Course::where('tutor_id', auth()->user()->tutor->id)
                        ->where('skill_id', $getCategoryKelolaSearch->id)->get();
                }
            }
        } else {
            if ($this->categorySearch != null) {
                if ($this->categoryDropdownSort == 'Abjad Kategori') {
                    $this->courseCategories = Skill::where('name', 'like', '%'.$this->categorySearch.'%')
                    ->orderBy('name', 'ASC')
                    ->get();
                } else {
                    $courseOrdered = Course::groupBy('skill_id')
                    ->selectRaw('count(*) as total, skill_id')
                    ->orderBy('total', 'ASC')
                    ->pluck('skill_id')->toArray();

                    if (count($courseOrdered) > 0) {
                        $ids = $courseOrdered;
                        $ids_ordered = implode(',', $ids);
                        $this->courseCategories = Skill::whereIn('id', $courseOrdered)
                        ->where('name', 'like', '%'.$this->categorySearch.'%')
                                                ->orderByRaw("FIELD(id, $ids_ordered)")
                                                ->get();
                    }
                }
            } else {
                if ($this->categoryDropdownSort == 'Abjad Kategori') {
                    $this->courseCategories = Skill::orderBy('name', 'ASC')
                    ->get();
                } else {
                    $courseOrdered = Course::groupBy('skill_id')
                    ->selectRaw('count(*) as total, skill_id')
                    ->orderBy('total', 'ASC')
                    ->pluck('skill_id')->toArray();

                    if (count($courseOrdered) > 0) {
                        $ids = $courseOrdered;
                        $ids_ordered = implode(',', $ids);
                        $this->courseCategories = Skill::whereIn('id', $courseOrdered)
                                                ->orderByRaw("FIELD(id, $ids_ordered)")
                                                ->get();
                    }
                }
            }
        }

        return view('livewire.course-category');
    }

    public function mount()
    {
        if (auth()->user()->user_type == 'Tutor' && $this->activeTabCourseCategory != 'eksplor') {
            $this->skills = Skill::whereIn('id', Course::where('tutor_id', auth()->user()->tutor->id)->pluck('skill_id'))
            ->get();
            if (!$this->categoryKelolaDropdownSort) {
                $this->setCategoryKelolaDropdownSort($this->skills->first()->name);
            }
        }
        $this->setTab('eksplor');
        $this->setCategoryDropdownSort('Abjad Kategori');
    }

    public function setTab($tab)
    {
        if (Auth::user()->tutor) {
            $this->activeTabCourseCategory = $tab;
        }
    }

    public function setCategoryDropdownSort($categoryDropdownSortNew)
    {
        $this->categoryDropdownSort = $categoryDropdownSortNew;
    }

    public function setCategoryKelolaDropdownSort($categoryKelolaDropdownSortNew)
    {
        $this->categoryKelolaDropdownSort = $categoryKelolaDropdownSortNew;
    }
}
