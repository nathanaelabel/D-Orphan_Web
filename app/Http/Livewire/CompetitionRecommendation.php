<?php

namespace App\Http\Livewire;

use App\Models\CompetitionRecommendation as ModelsCompetitionRecommendation;
use Livewire\Component;

class CompetitionRecommendation extends Component
{
    public $competitionRecommendation;

    public function render()
    {
        return view('livewire.competition-recommendation');
    }

    public function mount()
    {
        //  $this->competitionRecommendation = ModelsCompetitionRecommendation::where('orphanage_id', auth()->user()->orphanage->id)->get();
    }
}
