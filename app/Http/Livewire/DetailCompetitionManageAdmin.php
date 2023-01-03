<?php

namespace App\Http\Livewire;

use App\Models\Competition;
use Livewire\Component;

class DetailCompetitionManageAdmin extends Component
{
    public $editedCompetition;
    public $competition;
    public $name;
    public $photo_url;
    public $registration_start_date;
    public $registration_start_hour;
    public $url;
    public $level;
    public $description;
    public $organizer;
    public $showFormConfirmation;

    public function render()
    {
        return view('livewire.detail-competition-manage-admin');
    }

    public function mount($competition_id)
    {
        $this->editedCompetition = false;
        $this->showFormConfirmation = false;
        $this->competition = Competition::find($competition_id);
        $this->resetForm();
    }

    public function saveCompetition()
    {
        $this->competition->update([
            'name' => $this->name,
            'photo_url' => $this->photo_url,
            'registration_start_date' => $this->registration_start_date,
            'registration_start_hour' => $this->registration_start_hour,
            'url' => $this->url,
            'level' => $this->level,
            'description' => $this->description,
            'organizer' => $this->organizer,
        ]);
        $this->editedCompetition = false;
        $this->showFormConfirmation = false;
    }

    public function resetForm()
    {
        $this->name = $this->competition->name;
        $this->photo_url = $this->competition->photo_url;
        $this->registration_start_date = $this->competition->registration_start_date;
        $this->registration_start_hour = $this->competition->registration_start_hour;
        $this->url = $this->competition->url;
        $this->level = $this->competition->level;
        $this->description = $this->competition->description;
        $this->organizer = $this->competition->organizer;
    }

    public function editCompetition()
    {
        $this->editedCompetition = true;
    }

    public function deleteCompetition()
    {
        $this->competition->delete();

        return redirect()->route('kelola-competition-admin');
    }

    public function openModalConfirmation()
    {
        $this->showFormConfirmation = true;
    }

    public function closeModalConfirmation()
    {
        $this->showFormConfirmation = false;
    }
}
