<?php

namespace App\Http\Livewire;

use App\Models\Orphan;
use App\Models\Orphanage;
use Livewire\Component;

class ListOrphanage extends Component
{
    public $orphanages;
    public $PASearch;
    public $orphanageDropdownSort;

    public function render()
    {
        $this->orphanages = [];
        if ($this->PASearch != null) {
            if ($this->orphanageDropdownSort == 'Abjad Nama') {
                $this->orphanages = Orphanage::where('name', 'like', '%'.$this->PASearch.'%')
                ->orderBy('name', 'ASC')->get();
            } else {
                $orphanageOrdered = Orphan::groupBy('orphanage_id')
                    ->selectRaw('count(*) as total, orphanage_id')
                    ->orderBy('total', 'DESC')
                    ->pluck('orphanage_id')->toArray();

                if (count($orphanageOrdered) > 0) {
                    $ids = $orphanageOrdered;
                    $ids_ordered = implode(',', $ids);
                    $this->orphanages = Orphanage::whereIn('id', $orphanageOrdered)
                        ->where('name', 'like', '%'.$this->PASearch.'%')
                                                ->orderByRaw("FIELD(id, $ids_ordered)")
                                                ->get();
                }
            }
        } else {
            if ($this->orphanageDropdownSort == 'Abjad Nama') {
                $this->orphanages = Orphanage::orderBy('name', 'ASC')->get();
            } else {
                $orphanageOrdered = Orphan::groupBy('orphanage_id')
                ->selectRaw('count(*) as total, orphanage_id')
                ->orderBy('total', 'DESC')
                ->pluck('orphanage_id')->toArray();

                if (count($orphanageOrdered) > 0) {
                    $ids = $orphanageOrdered;
                    $ids_ordered = implode(',', $ids);
                    $this->orphanages = Orphanage::whereIn('id', $orphanageOrdered)
                                            ->orderByRaw("FIELD(id, $ids_ordered)")
                                            ->get();
                }
            }
        }

        return view('livewire.list-orphanage');
    }

    public function mount()
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

        $this->setOrphanageDropdownSort('Abjad Nama');
    }

    public function setOrphanageDropdownSort($orphanageDropdownSortNew)
    {
        $this->orphanageDropdownSort = $orphanageDropdownSortNew;
    }
}
