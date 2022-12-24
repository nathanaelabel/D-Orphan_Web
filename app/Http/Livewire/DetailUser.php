<?php

namespace App\Http\Livewire;

use App\Models\User;
use Livewire\Component;

class DetailUser extends Component
{
    public $user;

    public function render()
    {
        return view('livewire.detail-user')->with('user', $this->user);
    }

    public function mount($user_id)
    {
        $this->user = User::find($user_id);
    }
}
