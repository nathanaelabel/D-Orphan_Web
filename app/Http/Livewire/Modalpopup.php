<?php

namespace App\Http\Livewire;

use Livewire\Component;

class Modalpopup extends Component
{
    public function render()
    {
        return view('livewire.modalpopup');
    }

    // hide modal when init
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

    public function actionModal(){
        $this->modal = false;
        // do something
    }
}
