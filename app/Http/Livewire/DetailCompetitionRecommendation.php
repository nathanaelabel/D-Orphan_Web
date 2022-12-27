<?php

namespace App\Http\Livewire;

use App\Models\CompetitionRecommendation;
use App\Models\Orphan;
use App\Models\OrphanCr;
use Livewire\Component;

class DetailCompetitionRecommendation extends Component
{
    public function render()
    {
        return view('livewire.detail-competition-recommendation');
    }

    public function mount($competition_recommendation_id)
    {
        $this->competitionRecommendation = CompetitionRecommendation::find($competition_recommendation_id);
        $this->orphanCrs = OrphanCr::whereIn('orphan_id', Orphan::where('orphanage_id', auth()->user()->orphanage->id)->pluck('id'))
            ->where('competition_recommendation_id', $competition_recommendation_id)->get();
    }
}
