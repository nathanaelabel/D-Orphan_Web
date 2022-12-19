<?php

namespace App\Http\Livewire;

use App\Models\Donation;
use App\Models\Orphanage;
use App\Models\Transaction;
use Livewire\Component;

class DonationDelivery extends Component
{
    public $orphanages;
    public $selectedOrphanage;
    public $donator_name;
    public $amount;
    public $message;
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

    public function saveDonation()
    {
        $a = Transaction::create(
            [
                'user_id' => $this->selectedOrphanage,
                'to_user_id' => $this->selectedOrphanage,
                'status' => 'pending',
                'description' => 'Donasi ke Panti Asuhan',
                'amount' => $this->amount,
            ]
        );
        Donation::create([
            'orphanage_id' => $this->selectedOrphanage,
            'donator_name' => $this->donator_name,
            'amount' => $this->amount,
            'message' => $this->message,
            'transaction_id' => $a->id,
        ]);
        return redirect(route('midtrans', $a->id));
    }
}
