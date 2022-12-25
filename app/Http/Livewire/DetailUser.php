<?php

namespace App\Http\Livewire;

use App\Models\User;
use Livewire\Component;

class DetailUser extends Component
{
    public $user;

    public function render()
    {
        return view('livewire.detail-user');
    }

    public function mount($user_id)
    {
        if (auth()->user()->user_type == 'Tutor') {
            $this->user = User::find($user_id)->orphanage;
        } else {
            $this->user = User::find($user_id)->tutor;
        }
    }
}
