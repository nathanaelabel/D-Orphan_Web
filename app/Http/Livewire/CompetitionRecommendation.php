<?php

namespace App\Http\Livewire;

use App\Models\Competition;
use App\Models\CompetitionRecommendation as ModelsCompetitionRecommendation;
use Livewire\Component;
use Livewire\WithPagination;

class CompetitionRecommendation extends Component
{
    use WithPagination;
    public $competitionRecommendations;
    public $competitionSearch;
    public $competitionDropdownSort;

    public function render()
    {
        $this->competitionRecommendations = [];
        if (auth()->user()->user_type == 'Pengurus Panti') {
            if ($this->competitionSearch != null) {
                if ($this->competitionDropdownSort == 'Abjad Nama') {
                    $ids_competition_ordered = Competition::where('name', 'like', '%' . $this->competitionSearch . '%')
                        ->orderBy('name', 'ASC')
                        ->pluck('id')->toArray();

                    if (count($ids_competition_ordered) > 0) {
                        $ids_competition_ordered_new = implode(',', $ids_competition_ordered);
                        $this->competitionRecommendations = ModelsCompetitionRecommendation::whereIn('competition_id', $ids_competition_ordered)
                            ->where('orphanage_id', auth()->user()->orphanage->id)
                            ->orderByRaw("FIELD(id, $ids_competition_ordered_new)")
                            ->get();
                    }
                } else {
                    $ids_competition_ordered = Competition::where('name', 'like', '%' . $this->competitionSearch . '%')
                        ->orderBy('registration_start_date', 'ASC')
                        ->pluck('id')->toArray();

                    if (count($ids_competition_ordered) > 0) {
                        $ids_competition_ordered_new = implode(',', $ids_competition_ordered);
                        $this->competitionRecommendations = ModelsCompetitionRecommendation::whereIn('competition_id', $ids_competition_ordered)
                            ->where('orphanage_id', auth()->user()->orphanage->id)
                            ->orderByRaw("FIELD(id, $ids_competition_ordered_new)")
                            ->get();
                    }
                }
            } else {
                if ($this->competitionDropdownSort == 'Abjad Nama') {
                    $ids_competition_ordered = Competition::orderBy('name', 'ASC')
                        ->pluck('id')->toArray();

                    if (count($ids_competition_ordered) > 0) {
                        $ids_competition_ordered_new = implode(',', $ids_competition_ordered);
                        $this->competitionRecommendations = ModelsCompetitionRecommendation::whereIn('competition_id', $ids_competition_ordered)
                            ->where('orphanage_id', auth()->user()->orphanage->id)
                            ->orderByRaw("FIELD(id, $ids_competition_ordered_new)")
                            ->get();
                    }
                } else {
                    $ids_competition_ordered = Competition::orderBy('registration_start_date', 'ASC')
                        ->pluck('id')->toArray();

                    if (count($ids_competition_ordered) > 0) {
                        $ids_competition_ordered_new = implode(',', $ids_competition_ordered);
                        $this->competitionRecommendations = ModelsCompetitionRecommendation::whereIn('competition_id', $ids_competition_ordered)
                            ->where('orphanage_id', auth()->user()->orphanage->id)
                            ->orderByRaw("FIELD(id, $ids_competition_ordered_new)")
                            ->get();
                    }
                }
            }
        } else {
            if ($this->competitionSearch != null) {
                if ($this->competitionDropdownSort == 'Abjad Nama') {
                    $this->competitionRecommendations = Competition::where('name', 'like', '%' . $this->competitionSearch . '%')
                        ->orderBy('name', 'ASC')
                        ->get();
                } else {
                    $this->competitionRecommendations = Competition::where('name', 'like', '%' . $this->competitionSearch . '%')
                        ->orderBy('registration_start_date', 'ASC')
                        ->get();
                }
            } else {
                if ($this->competitionDropdownSort == 'Abjad Nama') {
                    $this->competitionRecommendations = Competition::orderBy('name', 'ASC')
                        ->get();
                } else {
                    $this->competitionRecommendations = Competition::orderBy('registration_start_date', 'ASC')
                        ->get();
                }
            }
        }
        $competitionRecommendations = $this->competitionRecommendations;

        return view(
            'livewire.competition-recommendation',
            compact('competitionRecommendations')
        );
    }

    public function mount()
    {
        $this->setCompetitionDropwdownSort('Abjad Nama');
    }

    public function setCompetitionDropwdownSort($competitionDropdownSortNew)
    {
        $this->competitionDropdownSort = $competitionDropdownSortNew;
    }
}
