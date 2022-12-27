<?php

namespace App\Http\Livewire;

use Livewire\Component;

class UpdateDeleteModal extends Component
{
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
}
