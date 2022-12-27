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
        if (auth()->user()->user_type == 'Pengurus Panti') {
            if ($this->competitionSearch != null) {
                if ($this->competitionDropdownSort == 'Abjad Nama') {
                    $ids_competition_ordered = Competition::where('name', 'like', '%'.$this->competitionSearch.'%')
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
                    $ids_competition_ordered = Competition::where('name', 'like', '%'.$this->competitionSearch.'%')
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
// //////
// if ($this->activeTabCourseCategory == 'eksplor') {
//     if ($this->competitionSearch != null) {
//         if ($this->competitionDropdownSort == 'Abjad Nama') {
//             $ids_competition_ordered = Competition::where('name', 'like', '%'.$this->competitionSearch.'%')
//             ->orderBy('name', 'ASC')
//             ->pluck('id')->toArray();
    
//             if (count($ids_competition_ordered) > 0) {
//                 $ids_competition_ordered_new = implode(',', $ids_competition_ordered);
//                 $this->competitionRecommendations = ModelsCompetitionRecommendation::whereIn('competition_id', $ids_competition_ordered)
//             ->where('orphanage_id', auth()->user()->orphanage->id)
//             ->orderByRaw("FIELD(id, $ids_competition_ordered_new)")
//                                     ->get();
//             }
//         } else {
//             $ids_competition_ordered = Competition::where('name', 'like', '%'.$this->competitionSearch.'%')
//             ->orderBy('registration_start_date', 'ASC')
//             ->pluck('id')->toArray();
    
//             if (count($ids_competition_ordered) > 0) {
//                 $ids_competition_ordered_new = implode(',', $ids_competition_ordered);
//                 $this->competitionRecommendations = ModelsCompetitionRecommendation::whereIn('competition_id', $ids_competition_ordered)
//             ->where('orphanage_id', auth()->user()->orphanage->id)
//             ->orderByRaw("FIELD(id, $ids_competition_ordered_new)")
//                                     ->get();
//             }
//         }
//     } else {
//         if ($this->competitionDropdownSort == 'Abjad Nama') {
//             $ids_competition_ordered = Competition::orderBy('name', 'ASC')
//             ->pluck('id')->toArray();
    
//             if (count($ids_competition_ordered) > 0) {
//                 $ids_competition_ordered_new = implode(',', $ids_competition_ordered);
//                 $this->competitionRecommendations = ModelsCompetitionRecommendation::whereIn('competition_id', $ids_competition_ordered)
//             ->where('orphanage_id', auth()->user()->orphanage->id)
//             ->orderByRaw("FIELD(id, $ids_competition_ordered_new)")
//                                     ->get();
//             }
//         } else {
//             $ids_competition_ordered = Competition::orderBy('registration_start_date', 'ASC')
//             ->pluck('id')->toArray();
    
//             if (count($ids_competition_ordered) > 0) {
//                 $ids_competition_ordered_new = implode(',', $ids_competition_ordered);
//                 $this->competitionRecommendations = ModelsCompetitionRecommendation::whereIn('competition_id', $ids_competition_ordered)
//             ->where('orphanage_id', auth()->user()->orphanage->id)
//             ->orderByRaw("FIELD(id, $ids_competition_ordered_new)")
//                                     ->get();
//             }
//         }
//     }
// }  else { //jika bukan eksplor
//     $getCategoryKelolaSearch = Skill::where('name', $this->categoryKelolaDropdownSort)->first();

//     if ($this->categoryKelolaSearch != null) {
//         $this->coursesTutor = Course::where('tutor_id', auth()->user()->tutor->id)
//         ->where('skill_id', 'like', '%'.$getCategoryKelolaSearch->id.'%')
//         ->orwhere('hourly_price', 'like', '%'.$this->categoryKelolaSearch.'%')
//         ->orwhere('is_online', 'like', '%'.$this->categoryKelolaSearch.'%')
//         ->orwhere('is_visit', 'like', '%'.$this->categoryKelolaSearch.'%')
//         ->orwhere('description', 'like', '%'.$this->categoryKelolaSearch.'%')
//         ->orwhere('maximum_member', 'like', '%'.$this->categoryKelolaSearch.'%')
//         ->orwhere('tool_price', 'like', '%'.$this->categoryKelolaSearch.'%')
//         ->orwhere('tool_description', 'like', '%'.$this->categoryKelolaSearch.'%')
//         ->orwhere('location', 'like', '%'.$this->categoryKelolaSearch.'%')
//         ->orwhere('name', 'like', '%'.$this->categoryKelolaSearch.'%')
//         ->get();
//     } else {
//         $this->coursesTutor = Course::where('tutor_id', auth()->user()->tutor->id)
//             ->where('skill_id', 'like', '%'.$getCategoryKelolaSearch->id.'%')->get();
//     }
// }


//             ////////
        }

        return view(
            'livewire.competition-recommendation'
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
