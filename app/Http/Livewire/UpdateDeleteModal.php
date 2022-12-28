<?php

namespace App\Http\Livewire;

use App\Models\Orphan;
use Livewire\Component;

class UpdateDeleteModal extends Component
{
    public $showForm = false;

    public function render()
    {
        return view('livewire.update-delete-modal');
    }

    public function mount()
    {
        $this->modal = false;
    }

    public function showModal()
    {
        $this->modal = true;
    }

    public function closeModal()
    {
        $this->modal = false;
    }

    public function actionModal()
    {
        $this->modal = false;
        // do something
    }

    public function toggleForm()
    {
        $this->showForm = !$this->showForm;
    }

    public function addData()
    {
        $this->showForm = true;

        $this->validate([
            'name' => 'required',
            'date_of_birth' => 'required',
            'gender' => 'required',
        ], [
            'name.required' => 'Nama harus diisi.',
            'date_of_birth.required' => 'Tanggal lahir harus diisi.',
            'gender.required' => 'Jenis kelamin harus diisi.',
        ]);

        $orphan = Orphan::create([
            'orphanage_id' => auth()->user()->orphanage->id,
            'name' => $this->name,
            'date_of_birth' => $this->date_of_birth,
            'gender' => $this->gender,
            'note' => $this->note,
        ]);

        // reset form fields
        $this->reset();

        // show success message
        session()->flash('message', 'Anak panti berhasil ditambahkan.');
    }

}
