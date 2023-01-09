<?php

namespace App\Http\Livewire;

use App\Models\Skill;
use Livewire\Component;

class CategoryManageAdmin extends Component
{
    public $name;
    public $categories;
    public $category, $keterangan;
    public $showFormConfirmation;

    public function render()
    {
        $this->categories = Skill::all();

        return view('livewire.category-manage-admin');
    }

    public function mount()
    {
        $this->keterangan = "tambah";
        $this->showFormConfirmation = false;
    }

    public function addCategory()
    {
        Skill::create([
            'name' => $this->name,
        ]);

        $this->closeModalConfirmation();
    }

    public function openModalConfirmation($index, $keterangan)
    {
        if ($index != "") {
            $this->category = Skill::find($index);
        }
        $this->keterangan = $keterangan;
        $this->showFormConfirmation = true;
    }

    public function closeModalConfirmation()
    {
        $this->showFormConfirmation = false;
    }

    public function deleteCategory()
    {
        $this->category->delete();
        $this->closeModalConfirmation();
    }
}
