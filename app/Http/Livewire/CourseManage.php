<?php

namespace App\Http\Livewire;

use App\Models\Course;
use App\Models\Skill;
use Livewire\Component;

class CourseManage extends Component
{
    public $coursesTutors;
    public $categoryKelolaSearch;
    public $categoryKelolaDropdownSort;
    public $editedCourseTutorIndex;
    public $showForm;
    public $showFormConfirmation;
    public $description;
    public $hourly_price;
    public $is_online = 0;
    public $is_visit = 1;
    public $maximum_member;

    public function render()
    {
        $this->coursesTutors = [];
        $this->skills = Skill::whereIn('id', Course::where('tutor_id', auth()->user()->tutor->id)->pluck('skill_id'))
            ->get();
        if (!$this->categoryKelolaDropdownSort) {
            $this->setCategoryKelolaDropdownSort($this->skills->first()->name);
        }
        $getCategoryKelolaSearch = Skill::where('name', $this->categoryKelolaDropdownSort)->first();

        if ($this->categoryKelolaSearch != null) {
            $this->coursesTutors = Course::where('tutor_id', auth()->user()->tutor->id)
                ->where('skill_id', $getCategoryKelolaSearch->id);

            $this->coursesTutors->where(function ($search) {
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

            $this->coursesTutors = $this->coursesTutors->get()->toArray();
        } else {
            $this->coursesTutors = Course::where('tutor_id', auth()->user()->tutor->id)
                ->where('skill_id', $getCategoryKelolaSearch->id)->get()->toArray();
        }
        $this->tutorSkills = [];
        for ($i = 0; $i < count($this->coursesTutors); ++$i) {
            array_push($this->tutorSkills, '' . Skill::where('id', $this->coursesTutors[$i]['skill_id'])->first()->name);
        }

        return view('livewire.course-manage');
    }

    public function mount()
    {
        $this->editedCourseTutorIndex = null;
        $this->showForm = false;
        $this->showFormConfirmation = false;
    }

    public function setCategoryKelolaDropdownSort($categoryKelolaDropdownSortNew)
    {
        $this->categoryKelolaDropdownSort = $categoryKelolaDropdownSortNew;
    }

    public function toggleForm()
    {
        $this->showForm = !$this->showForm;
    }

    public function openModalConfirmation($tutorCourseIndex, $keterangan)
    {
        $this->courseTutor = $this->coursesTutors[$tutorCourseIndex] ?? null;
        $this->keterangan = $keterangan;
        $this->showFormConfirmation = true;
    }

    public function closeModalConfirmation()
    {
        $this->showFormConfirmation = false;
    }

    public function saveCourseTutor()
    {
        if (!is_null($this->courseTutor)) {
            Course::find($this->courseTutor['id'])->update($this->courseTutor);
        }
        $this->showFormConfirmation = false;
        $this->editedCourseTutorIndex = null;
    }

    public function deleteCourseTutor()
    {
        if (!is_null($this->courseTutor)) {
            Course::find($this->courseTutor['id'])->delete();
        }

        $this->showFormConfirmation = false;
        $this->editedCourseTutorIndex = null;
    }

    public function addData()
    {
        $this->validate([
            'skill_id' => 'required',
            'description' => 'required',
            'hourly_price' => 'required',
            'is_online' => 'required',
            'is_visit' => 'required',
            'maximum_member' => 'required',
        ], [
            'skill_id.required' => 'Silahkan pilih kategori kursus',
            'description.required' => 'Silahkan isi deskripsi',
            'hourly_price.required' => 'Silahkan isi harga per jam',
            'maximum_member.required' => 'Silahkan isi jumlah batas peserta',
        ]);

        $skill = Skill::find($this->skill);

        $skill->courses()->create([
            'tutor_id' => auth()->user()->tutor->id,
            'skill_id' => $this->skill,
            'description' => $this->description,
            'hourly_price' => $this->hourly_price,
            'is_online' => $this->is_online,
            'is_visit' => $this->is_visit,
            'maximum_member' => $this->maximum_member,
        ]);
        $this->showForm = false;
        // reset form fields
        $this->reset();

        // show success message
        session()->flash('message', 'Kursus berhasil ditambahkan.');
    }

    public function editCourseTutor($courseTutorIndex)
    {
        $this->editedCourseTutorIndex = $courseTutorIndex;
    }
}
