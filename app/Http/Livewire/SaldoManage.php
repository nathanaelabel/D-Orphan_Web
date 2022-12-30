<?php

namespace App\Http\Livewire;

use App\Models\Orphanage;
use App\Models\Skill;
use App\Models\Transaction;
use Livewire\Component;

class SaldoManage extends Component
{
    public $tutorTransactionSearch;
    public $editedTutorTransactionIndex;
    public $tutorTransactionDropdownSort;
    public $tutorTypeTransactionDropdownSort;
    public $tutorTransactions;
    public $status;
    public $showForm;
    public $showFormConfirmation;

    public function render()
    {
        $this->tutorTransactions = [];
        $this->status = [];

        if ($this->tutorTypeTransactionDropdownSort == 'Penarikan Saldo') {
            $this->status = Transaction::where('user_id', auth()->user()->id)
            ->groupby('status')
            ->selectRaw('status')
            ->get()->toArray();
        } else {
            $this->status = Transaction::where('to_user_id', auth()->user()->id)
            ->groupby('status')
            ->selectRaw('status')
            ->get()->toArray();
        }

        if (!$this->tutorTransactionDropdownSort && count($this->status)) {
            $this->setTutorTransactionDropdownSort($this->status[0]['status']);
        }
        $this->tutorTransactions = Transaction::where('status', $this->tutorTransactionDropdownSort);

        $this->tutorTransactions->where(function ($search) {
            return $search->where('user_id', auth()->user()->id)
                        ->orwhere('to_user_id', auth()->user()->id);
        });

        $listIdUserPanti = $this->tutorTransactions->where('user_id', '<>', auth()->user()->id)
            ->pluck('user_id')->toArray();

        if (count($listIdUserPanti) > 0) {
            $ids_ordered = implode(',', $listIdUserPanti);
            $listNamePanti = Orphanage::whereIn('user_id', $listIdUserPanti)
                                            ->orderByRaw("FIELD(id, $ids_ordered)")
                                            ->pluck('name')->toArray();
            $name_ordered = "'".implode("','", $listNamePanti)."'";

            $this->tutorTransactions = $this->tutorTransactions->selectRaw("*, ELT(FIELD(user_id, $ids_ordered), $name_ordered) as from_panti");

            if ($this->tutorTypeTransactionDropdownSort == 'Penarikan Saldo') {
                $this->tutorTransactions = $this->tutorTransactions->where('user_id', auth()->user()->id);
            } else {
                $this->tutorTransactions = $this->tutorTransactions->where('to_user_id', auth()->user()->id);
            }

            if ($this->tutorTransactionSearch != null) {
                $this->tutorTransactions->where(function ($search) {
                    return $search->where('amount', 'like', '%'.$this->tutorTransactionSearch.'%')
                        ->orwhere('description', 'like', '%'.$this->tutorTransactionSearch.'%')
                        ->orwhere('created_at', 'like', '%'.$this->tutorTransactionSearch.'%')
                            ->orwhere('updated_at', 'like', '%'.$this->tutorTransactionSearch.'%');
                });

                $this->tutorTransactions = $this->tutorTransactions->orderBy('updated_at', 'DESC')
                ->get()->toArray();
            } else {
                $this->tutorTransactions = $this->tutorTransactions->orderBy('updated_at', 'DESC')
                ->get()->toArray();
            }
        } else {
            $this->tutorTransactions = [];
        }

        return view('livewire.saldo-manage');
    }

    public function mount()
    {
        $this->editedTutorTransactionIndex = null;
        $this->showForm = false;
        $this->showFormConfirmation = false;
        if (!$this->tutorTypeTransactionDropdownSort) {
            $this->setTutorTypeTransactionDropdownSort('Penarikan Saldo');
        }
    }

    public function openModalConfirmation($tutorTransactionIndex)
    {
        $this->tutorTransactions = $this->tutorTransactions[$tutorTransactionIndex] ?? null;
        $this->showFormConfirmation = true;
    }

    public function closeModalConfirmation()
    {
        $this->showFormConfirmation = false;
    }

    public function saveTutorTransaction()
    {
        if (!is_null($this->tutorTransaction)) {
            Transaction::find($this->tutorTransaction['id'])->update($this->tutorTransaction);
        }
        $this->showFormConfirmation = false;
        $this->editedTutorTransactionIndex = null;
    }

    public function toggleForm()
    {
        $this->showForm = !$this->showForm;
    }

    public function addData()
    {
        //nti diisi
        // $this->validate([
        //     'name' => 'required',
        //     'date_of_birth' => 'required',
        //     'gender' => 'required',
        // ], [
        //     'name.required' => 'Nama harus diisi.',
        //     'date_of_birth.required' => 'Tanggal lahir harus diisi.',
        //     'gender.required' => 'Jenis kelamin harus diisi.',
        // ]);

        // $skill = Skill::find($this->skill);

        // ///nti diisi
        // $skill->courses()->create([
        // 'orphanage_id' => auth()->user()->orphanage->id,
        // 'name' => $this->name,
        // 'date_of_birth' => $this->date_of_birth,
        // 'gender' => $this->gender,
        // 'note' => $this->note,
        // ]);
        $this->showForm = false;
        // reset form fields
        // $this->reset();

        // show success message
        session()->flash('message', 'Kursus berhasil ditambahkan.');
    }

    public function editTutorTransaction($tutorTransactionIndex)
    {
        $this->editedTutorTransactionIndex = $tutorTransactionIndex;
    }

    public function setTutorTransactionDropdownSort($tutorTransactionDropdownSortNew)
    {
        $this->tutorTransactionDropdownSort = $tutorTransactionDropdownSortNew;
    }

    public function setTutorTypeTransactionDropdownSort($tutorTypeTransactionDropdownSortNew)
    {
        $this->tutorTypeTransactionDropdownSort = $tutorTypeTransactionDropdownSortNew;
    }
}
