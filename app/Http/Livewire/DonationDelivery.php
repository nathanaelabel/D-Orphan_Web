<?php

namespace App\Http\Livewire;

use App\Models\Donation;
use App\Models\Orphanage;
use App\Models\Transaction;
use App\Models\User;
use Livewire\Component;

class DonationDelivery extends Component
{
    public $orphanages;
    public $selectedOrphanage;
    public $donator_name;
    public $amount;
    public $message;
    public $target;

    public function render()
    {
        return view('livewire.donation-delivery');
    }

    public function mount($user_id)
    {
        if (auth()) {
            if (auth()->user()->phone_number == null || auth()->user()->address == null) {
                return redirect()->route('user-approve');
            }

            if (auth()->user()->user_type == 'Pengurus Panti') {
                if (auth()->user()->orphanage->name == null || auth()->user()->orphanage->description == null) {
                    return redirect()->route('user-approve');
                }
            } elseif (auth()->user()->user_type == 'Tutor') {
                if (auth()->user()->tutor->bank_account == null || auth()->user()->tutor->description == null || count(auth()->user()->tutor->tutorDayTimeRanges) == 0) {
                    return redirect()->route('user-approve');
                }
            }
        }

        $this->selectedOrphanage = User::find($user_id)->id;

        $this->target = User::find($user_id)->orphanage;
        if (auth()->user()) {
            $this->donator_name = auth()->user()->name;
        }
        $this->setOrphanages();
    }

    public function setOrphanages()
    {
        $this->orphanages = Orphanage::all();
    }

    public function saveDonation()
    {
        $transaction = Transaction::create(
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
            'transaction_id' => $transaction->id,
        ]);

        return redirect(route('midtrans', $transaction->id));
    }
}
