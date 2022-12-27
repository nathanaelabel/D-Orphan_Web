<?php

namespace App\Http\Livewire;

use App\Models\CompetitionRecommendation;
use App\Models\CourseBooking;
use App\Models\Orphan;
use App\Models\OrphanCourseBooking;
use App\Models\OrphanCr;
use Livewire\Component;

class KelolaPantiAsuhan extends Component
{
    public $orphanSearch;
    public $orphans;
    public $editedOrphanIndex = null;
    public $editedOrphanField = null;
    public $orphanDropdownSort;

    public $coursesDoneOrphan;
    public $competitionRecommendation_sum;

    public function render()
    {
        $this->orphans = [];
        if ($this->orphanSearch != null) {
            if ($this->orphanDropdownSort == 'Abjad Nama') {
                $this->orphans = Orphan::where('name', 'like', '%'.$this->orphanSearch.'%')
                                    ->where('orphanage_id', auth()->user()->orphanage->id)
                                    ->orderBy('name', 'ASC')
                                    ->get();
            } elseif ($this->orphanDropdownSort == 'Total Kursus Berhasil') {
                $courseBookingOrdered = CourseBooking::where('orphanage_id', auth()->user()->orphanage->id)
                                        ->where('status', 'complete')->pluck('id')->toArray();

                if (count($courseBookingOrdered) > 0) {
                    $orphanOrdered = OrphanCourseBooking::whereIn('course_booking_id', $courseBookingOrdered)
                                        ->groupBy('orphan_id')
                                        ->selectRaw('count(*) as total, orphan_id')
                                        ->orderBy('total', 'ASC')
                                        ->pluck('orphan_id')
                                        ->toArray();
                    if (count($orphanOrdered) > 0) {
                        $ids = $orphanOrdered;
                        $ids_ordered = implode(',', $ids);
                        $this->orphans = Orphan::whereIn('id', $orphanOrdered)
                                            ->where('name', 'like', '%'.$this->orphanSearch.'%')
                                            ->where('orphanage_id', auth()->user()->orphanage->id)
                                            ->orderByRaw("FIELD(id, $ids_ordered)")
                                            ->get();
                    }
                }
            } else {
                $competitionRecommendationOrdered = CompetitionRecommendation::where('orphanage_id', auth()->user()->orphanage->id)
                                                        ->where('orphanage_id', auth()->user()->orphanage->id)
                                                        ->pluck('id')
                                                        ->toArray();

                if (count($competitionRecommendationOrdered) > 0) {
                    $orphanOrdered = OrphanCr::whereIn('competition_recommendation_id', $competitionRecommendationOrdered)
                                        ->groupBy('orphan_id')
                                        ->selectRaw('count(*) as total, orphan_id')
                                        ->orderBy('total', 'ASC')
                                        ->pluck('orphan_id')->toArray();

                    if (count($orphanOrdered) > 0) {
                        $ids = $orphanOrdered;
                        $ids_ordered = implode(',', $ids);
                        $this->orphans = Orphan::whereIn('id', $orphanOrdered)
                                            ->where('name', 'like', '%'.$this->orphanSearch.'%')
                                            ->where('orphanage_id', auth()->user()->orphanage->id)
                                            ->orderByRaw("FIELD(id, $ids_ordered)")
                                            ->get();
                    }
                }
            }
        } else {
            if ($this->orphanDropdownSort == 'Abjad Nama') {
                $this->orphans = Orphan::orderBy('name', 'ASC')
                                    ->where('orphanage_id', auth()->user()->orphanage->id)
                                    ->get();
            } elseif ($this->orphanDropdownSort == 'Total Kursus Berhasil') {
                $courseBookingOrdered = CourseBooking::where('status', 'complete')
                ->where('orphanage_id', auth()->user()->orphanage->id)
                                            ->pluck('id')
                                            ->toArray();

                if (count($courseBookingOrdered) > 0) {
                    $orphanOrdered = OrphanCourseBooking::whereIn('course_booking_id', $courseBookingOrdered)
                                        ->groupBy('orphan_id')
                                        ->selectRaw('count(*) as total, orphan_id')
                                        ->orderBy('total', 'ASC')
                                        ->pluck('orphan_id')
                                        ->toArray();

                    if (count($orphanOrdered) > 0) {
                        $ids = $orphanOrdered;
                        $ids_ordered = implode(',', $ids);
                        $this->orphans = Orphan::whereIn('id', $orphanOrdered)
                                            ->where('orphanage_id', auth()->user()->orphanage->id)
                                            ->orderByRaw("FIELD(id, $ids_ordered)")
                                            ->get();
                    }
                }
            
            } else {
                $competitionRecommendationOrdered = CompetitionRecommendation::where('orphanage_id', auth()->user()->orphanage->id)
                ->where('orphanage_id', auth()->user()->orphanage->id)
                                                        ->pluck('id')
                                                        ->toArray();

                if (count($competitionRecommendationOrdered) > 0) {
                    $orphanOrdered = OrphanCr::whereIn('competition_recommendation_id', $competitionRecommendationOrdered)
                                        ->groupBy('orphan_id')
                                        ->selectRaw('count(*) as total, orphan_id')
                                        ->orderBy('total', 'ASC')
                                        ->pluck('orphan_id')
                                        ->toArray();

                    if (count($orphanOrdered) > 0) {
                        $ids = $orphanOrdered;
                        $ids_ordered = implode(',', $ids);
                        $this->orphans = Orphan::whereIn('id', $orphanOrdered)
                                            ->where('orphanage_id', auth()->user()->orphanage->id)
                                            ->orderByRaw("FIELD(id, $ids_ordered)")
                                            ->get();
                    }
                }
            }
        }

        return view('livewire.kelola-panti-asuhan');
    }

    public function mount()
    {
        $this->setOrphanDropwdownSort('Abjad Nama');
    }

    public function setOrphanDropwdownSort($orphanDropdownSortNew)
    {
        $this->orphanDropdownSort = $orphanDropdownSortNew;
    }

    public function editOrphan($orphanIndex)
    {
        $this->editedOrphanIndex = $orphanIndex;
    }

    public function saveOrphan($orphanIndex)
    {
        $orphan = $this->orphans[$orphanIndex] ?? null;

        if (!is_null($orphan)) {
            Orphan::find($orphan['id'])->update($orphan);
        }
        $this->editedOrphanIndex = null;
    }

    public function deleteOrphan($orphanIndex)
    {
        $orphan = $this->orphans[$orphanIndex] ?? null;

        if (!is_null($orphan)) {
            Orphan::find($orphan['id'])->delete();
        }
    }

    public function addData()
    {
        //nunggu form
    }
}
