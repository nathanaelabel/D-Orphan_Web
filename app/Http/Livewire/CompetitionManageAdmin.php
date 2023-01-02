<?php

namespace App\Http\Livewire;

use App\Models\Competition;
use Livewire\Component;

class CompetitionManageAdmin extends Component
{
    public $competitions;
    public $showForm;
    public $showFormConfirmation;
    public $editedCompetitionIndex;
    public $competition;
    public $keterangan;
    public $name;
    public $photo_url;
    public $registration_start_date;
    public $registration_start_hour;
    public $url;
    public $level;
    public $description;
    public $organizer;
    public $competitionSearch;

    public function render()
    {
        $this->competitions = [];

        if ($this->competitionSearch != null) {
            $this->competitions = Competition::where('name', 'like', '%'.$this->competitionSearch.'%')
            ->orderBy('name', 'ASC')->get()->toArray();
        } else {
            $this->competitions = Competition::orderBy('name', 'ASC')->get()->toArray();
        }

        return view('livewire.competition-manage-admin');
    }

    public function mount()
    {
        $this->editedCompetitionIndex = null;
        $this->showForm = false;
        $this->showFormConfirmation = false;
    }

    public function toggleForm()
    {
        $this->showForm = !$this->showForm;
    }

    public function editCompetition($competitionIndex)
    {
        $this->editedCompetitionIndex = $competitionIndex;
    }

    public function openModalConfirmation($competitionIndex, $keterangan)
    {
        $this->competition = $this->competitions[$competitionIndex] ?? null;
        $this->keterangan = $keterangan;
        $this->showFormConfirmation = true;
    }

    public function closeModalConfirmation()
    {
        $this->showFormConfirmation = false;
    }

    public function saveCompetition()
    {
        if (!is_null($this->competition)) {
            Competition::find($this->competition['id'])->update($this->competition);
        }

        $this->showFormConfirmation = false;
        $this->editedCompetitionIndex = null;
    }

    public function deleteCompetition()
    {
        if (!is_null($this->competition)) {
            Competition::find($this->competition['id'])->delete();
        }

        $this->showFormConfirmation = false;
        $this->editedCompetitionIndex = null;
    }

    public function addData()
    {
        $this->validate([
            'name' => 'required',
            'photo_url' => 'required',
            'registration_start_date' => 'required',
            'registration_start_hour' => 'required',
            'url' => 'required',
            'level' => 'required',
            'description' => 'required',
            'organizer' => 'required',
        ], [
            'name.required' => 'Nama perlombaan harus diisi',
            'photo_url.required' => 'Poster harus diisi',
            'registration_start_date.required' => 'Tanggal registrasi dimulai harus diisi',
            'registration_start_hour.required' => 'Jam registrasi dimulai harus diisi',
            'url.required' => 'Link informasi perlombaan harus diisi',
            'level.required' => 'Tingkat perlombaan harus diisi',
            'description.required' => 'Deskripsi perlombaan harus diisi',
            'organizer.required' => 'Nama penyelenggara harus diisi',
        ]);

        Competition::create([
            'name' => $this->name,
            'photo_url' => $this->photo_url,
            'registration_start_date' => $this->registration_start_date,
            'registration_start_hour' => $this->registration_start_hour,
            'url' => $this->url,
            'level' => $this->level,
            'description' => $this->description,
            'organizer' => $this->organizer,
        ]);

        // reset form fields
        $this->reset();
        $this->showForm = false;
        // show success message
        session()->flash('message', 'Data perlombaan berhasil ditambahkan.');
    }
}
