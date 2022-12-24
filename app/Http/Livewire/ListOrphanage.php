<?php

namespace App\Http\Livewire;

use App\Models\Orphanage;
use Livewire\Component;

class ListOrphanage extends Component
{
    public $orphanages;
    public $PASearch;

    public function render()
    {
        if($this->PASearch!=null){  

            $this->orphanages= Orphanage::where('name','like', '%' . $this->PASearch . '%')->get();
            
                            }else{
                                $this->orphanages= Orphanage::all();
                            }
        return view('livewire.list-orphanage');
    }
}
