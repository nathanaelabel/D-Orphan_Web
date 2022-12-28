<?php

namespace App\Http\Livewire;

use App\Models\Orphan;
use Livewire\Component;

class CourseOrphan extends Component
{
    public $name;
    public $date_of_birth;
    public $gender;
    public $note;

    public function createOrphan()
    {
        $orphan = Orphan::create([
            'name' => $this->name,
            'date_of_birth' => $this->date_of_birth,
            'gender' => $this->gender,
            'note' => $this->note,
        ]);

        // reset form fields
        $this->reset();

        // show success message
        session()->flash('message', 'Peserta kursus berhasil ditambahkan.');
    }

    public function updateOrphan($id)
    {
        $orphan = Orphan::find($id);
        $orphan->update([
            'name' => $this->name,
            'date_of_birth' => $this->date_of_birth,
            'gender' => $this->gender,
            'note' => $this->note,
        ]);

        // reset form fields
        $this->reset();

        // show success message
        session()->flash('message', 'Peserta kursus berhasil diubah.');
    }

    public function deleteOrphan($id)
    {
        Orphan::destroy($id);

        // show success message
        session()->flash('message', 'Peserta kursus berhasil dihapus.');
    }

    public function render()
    {
        return view('livewire.course-orphan');
    }
}
