<?php

namespace App\Http\Livewire;

use App\Models\Orphan;
use Livewire\Component;

class OrphanageOrphan extends Component
{
    public $orphanage_id;
    public $name;
    public $date_of_birth;
    public $gender;
    public $note;

    public function createOrphan()
    {
        $orphan = Orphan::create([
            'orphanage_id' => auth()->user()->orphanage_id,
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

    public function editOrphan($id)
    {
        $orphan = Orphan::find($id);
        $this->orphanage_id = $orphan->orphanage_id;
        $this->name = $orphan->name;
        $this->date_of_birth = $orphan->date_of_birth;
        $this->gender = $orphan->gender;
        $this->note = $orphan->note;
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
        session()->flash('message', 'Anak panti berhasil diubah.');
    }

    public function deleteOrphan($id)
    {
        Orphan::destroy($id);

        // show success message
        session()->flash('message', 'Anak panti berhasil dihapus.');
    }

    public function render()
    {
        $orphans = Orphan::where('orphanage_id', auth()->user()->orphanage_id)->get();

        return view('livewire.orphanage-orphan', compact('orphans'));
    }

    public function mount()
    {
        $this->orphanage_id = auth()->user()->orphanage_id;
    }
}
