<?php

namespace App\Http\Livewire;

use Illuminate\Support\Facades\DB;
use Livewire\Component;

class AddOrphan extends Component
{
    public function render()
    {
        return view('livewire.add-orphan');
    }

    public function add()
    {
        // Validate the input data
        $this->validate([
            'name' => 'required|max:255',
            'date_of_birth' => 'required', 'date',
            'gender' => 'required', 'enum',
            'note' => 'required', 'text',
        ]);

        // Insert the data into the database
        DB::table('orphans')->insert([
            'orphanage_id' => $this->selectedOrphanage,
            'name' => $this->name,
            'date_of_birth' => $this->date_of_birth,
            'gender' => $this->gender
        ]);

        // Clear the input field
        $this->name = '';
        $this->date_of_birth = '';
        $this->gender = '';
    }
}
