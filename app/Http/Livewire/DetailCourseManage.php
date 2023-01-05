<?php

namespace App\Http\Livewire;

use App\Models\Course;
use App\Models\Skill;
use Livewire\Component;

class DetailCourseManage extends Component
{
    public $skills;
    public $getSkill;
    public $allSkills;
    public $tutorSkills;
    public $editedCourse;
    public $course;
    public $skill_id;
    public $name;
    public $description;
    public $hourly_price;
    public $is_online;
    public $is_visit;
    public $maximum_member;
    public $location;
    public $tool_price;
    public $tool_description;
    public $showFormConfirmation;

    public function render()
    {
        $this->skills = Skill::whereIn('id', Course::where('tutor_id', auth()->user()->tutor->id)->pluck('skill_id'))
            ->orderBy('name', 'ASC')->get();
        $this->allSkills = Skill::orderBy('name', 'ASC')->get();

        if ($this->getSkill != null && count(Course::where('skill_id', $this->getSkill)->where('tutor_id', auth()->user()->tutor->id)->get()) == 0) {
            $this->setCategoryKelolaDropdownSort($this->skills->first()->name);
            $this->getSkill = null;
        }

        if (count($this->skills) > 0) {
            $this->tutorSkills = [];
            for ($i = 0; $i < $this->course->count(); ++$i) {
                if (isset($this->course[$i])) {
                    array_push($this->tutorSkills, Skill::where('id', $this->course[$i]['skill_id'])->first());
                }
            }
        }

        return view('livewire.detail-course-manage');
    }

    public function mount($course_id)
    {
        $this->editedCourse = false;
        $this->showFormConfirmation = false;
        $this->course = Course::find($course_id);
        $this->resetForm();
    }

    public function saveCourse()
    {
        // $skill = Skill::find($this->skill_id);
        // dd($skill);

        // $skill->courses()->update([
        //     'tutor_id' => auth()->user()->tutor->id,
        //     'name' => $this->name,
        //     'description' => $this->description,
        //     'hourly_price' => $this->hourly_price,
        //     'is_online' => $this->is_online,
        //     'is_visit' => $this->is_visit,
        //     'maximum_member' => $this->maximum_member,
        //     'location' => $this->location,
        //     'tool_price' => $this->tool_price,
        //     'tool_description' => $this->tool_description,
        // ]);
        // $this->editedCourse = false;
        // $this->showFormConfirmation = false;

        $this->course->update([
            'name' => $this->name,
            'description' => $this->description,
            'hourly_price' => $this->hourly_price,
            'is_online' => $this->is_online,
            'is_visit' => $this->is_visit,
            'maximum_member' => $this->maximum_member,
            'location' => $this->location,
            'tool_price' => $this->tool_price,
            'tool_description' => $this->tool_description,
        ]);
        $this->editedCourse = false;
        $this->showFormConfirmation = false;
    }

    public function resetForm()
    {
        $this->name = $this->course->name;
        $this->description = $this->course->description;
        $this->hourly_price = $this->course->hourly_price;
        $this->is_online = $this->course->is_online;
        $this->is_visit = $this->course->is_visit;
        $this->maximum_member = $this->course->maximum_member;
        $this->location = $this->course->location;
        $this->tool_price = $this->course->tool_price;
        $this->tool_description = $this->course->tool_description;
    }

    public function editCourse()
    {
        $this->editedCourse = true;
    }

    public function deleteCourse()
    {
        $this->course->delete();

        return redirect()->route('kelola-kursus');
    }

    public function openModalConfirmation()
    {
        $this->showFormConfirmation = true;
    }

    public function closeModalConfirmation()
    {
        $this->showFormConfirmation = false;
    }
}
