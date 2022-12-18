<?php

namespace App\Http\Livewire;

use App\Models\Orphanage;
use Livewire\Component;

class DonationDelivery extends Component
{
    public $orphanages;

    public function render()
    {
        return view('livewire.donation-delivery')->with('orphanages', $this->orphanages);
    }

    public function mount()
    {
        $this->setOrphanages();
    }

    public function setOrphanages()
    {
        $this->orphanages = Orphanage::all();
    }
}
