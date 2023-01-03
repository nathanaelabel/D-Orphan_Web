<?php

namespace App\Http\Livewire;

use App\Models\Competition;
use App\Models\CompetitionRecommendation;
use App\Models\CourseBooking;
use App\Models\Orphan;
use App\Models\Orphanage;
use App\Models\OrphanCourseBooking;
use App\Models\OrphanCr;
use Livewire\Component;

class DetailCompetitionRecommendation extends Component
{
    public $competition_recommendation_id;
    public $orphanageDropdownSort;
    public $orphans;
    public $orphanages;
    public $orphanDropdownSort;
    public $orphanCrs;
    public $orphanCr;
    public $editedOrphanCrIndex;
    public $showFormConfirmation;
    public $keterangan;
    public $showForm;
    public $orphanDescription;
    public $competitionRecommendation;
    public $editedCrIndex;
    public $hasDoneCourseBooking;
    public $competitionRecommendations;

    public function render()
    {
        if (auth()->user()->orphanage) {
            $this->orphanCrs = [];

            $this->competitionRecommendation = CompetitionRecommendation::find($this->competition_recommendation_id);
            $this->orphanCrs = OrphanCr::whereIn('orphan_id', Orphan::where('id', $this->orphanDropdownSort)->where('orphanage_id', auth()->user()->orphanage->id)->pluck('id'))
                ->where('competition_recommendation_id', $this->competition_recommendation_id)
                ->orderBy('created_at', 'ASC')->get();

            $this->orphans = Orphan::whereIn('id', OrphanCr::whereIn('orphan_id', Orphan::where('orphanage_id', auth()->user()->orphanage->id)->pluck('id'))
                ->where('competition_recommendation_id', $this->competition_recommendation_id)->pluck('orphan_id'))
                ->orderBy('name', 'ASC')->get();
        } else {
            $this->competitionRecommendation = Competition::find($this->competition_recommendation_id);

            if ($this->hasDoneCourseBooking) {
                $this->orphanages = [];
                $this->orphans = [];

                $getCourses = auth()->user()->tutor->courses->pluck('id')->toArray();
                $getOrphanageId = CourseBooking::whereIn('course_id', $getCourses)->whereIn('status', ['ongoing', 'complete'])->pluck('orphanage_id')->toArray();
                $this->orphanages = Orphanage::whereIn('id', $getOrphanageId)->orderBy('name', 'ASC')->get();

                $getOrphanId = OrphanCourseBooking::whereIn('course_booking_id', CourseBooking::whereIn('course_id', $getCourses)->whereIn('status', ['ongoing', 'complete'])->pluck('id')->toArray())
                        ->pluck('orphan_id')->toArray();
                $this->orphans = Orphan::whereIn('id', $getOrphanId)->where('orphanage_id', $this->orphanageDropdownSort)
                        ->orderBy('name', 'ASC')->get();

                if (!$this->orphanDropdownSort || Orphan::find($this->orphanDropdownSort)->orphanage->id != $this->orphanageDropdownSort) {
                    $this->setOrphanDropdownSort($this->orphans->first()->id);
                }

                $this->competitionRecommendations = CompetitionRecommendation::where('competition_id', $this->competition_recommendation_id)
                    ->where('tutor_id', auth()->user()->tutor->id)->pluck('id')->toArray();

                $this->orphanCrs = OrphanCr::whereIn('competition_recommendation_id', $this->competitionRecommendations)
                    ->orderBy('updated_at', 'ASC')->get()->toArray();
            }
        }

        return view('livewire.detail-competition-recommendation');
    }

    public function mount($competition_recommendation_id)
    {

        if (auth()->user()->phone_number == null || auth()->user()->address == null) {
            return redirect()->route('user-approve');
        }

        if (auth()->user()->user_type == 'Pengurus Panti') {
            if (auth()->user()->orphanage->name == null || auth()->user()->orphanage->description == null) {
                return redirect()->route('user-approve');
            }
        } elseif (auth()->user()->user_type == 'Tutor') {
            if (auth()->user()->tutor->bank_account == null || auth()->user()->tutor->description == null || count(auth()->user()->tutor->tutorDayTimeRanges)==0) {
                return redirect()->route('user-approve');
            }
        }

        $this->competition_recommendation_id = $competition_recommendation_id;

        if (auth()->user()->tutor) {
            $this->editedCrIndex = null;
            $this->showFormConfirmation = false;
            $this->hasDoneCourseBooking = false;

            $this->competitionRecommendation = Competition::find($this->competition_recommendation_id);
            $getCourses = auth()->user()->tutor->courses->pluck('id')->toArray();
            $getOrphanageId = CourseBooking::whereIn('course_id', $getCourses)->whereIn('status', ['ongoing', 'complete'])->pluck('orphanage_id')->toArray();
            $this->hasDoneCourseBooking = false;

            if (count($getOrphanageId) > 0) {
                $this->hasDoneCourseBooking = true;
                $this->orphanages = Orphanage::whereIn('id', $getOrphanageId)->orderBy('name', 'ASC')->get();
                $this->setOrphanageDropdownSort($this->orphanages->first()->id);
            }
        } else {
            $this->orphans = Orphan::whereIn('id', OrphanCr::whereIn('orphan_id', Orphan::where('orphanage_id', auth()->user()->orphanage->id)->pluck('id'))
                ->where('competition_recommendation_id', $this->competition_recommendation_id)->pluck('orphan_id'))
                ->orderBy('name', 'ASC')->get();

            $this->setOrphanDropdownSort($this->orphans->first()->id);
        }
    }

    public function setOrphanageDropdownSort($orphanageDropdownSortNew)
    {
        $this->orphanageDropdownSort = $orphanageDropdownSortNew;
    }

    public function setOrphanDropdownSort($orphanDropdownSortNew)
    {
        $this->orphanDropdownSort = $orphanDropdownSortNew;
    }

    public function openModalConfirmation($orphanCrIndex, $keterangan)
    {
        $this->orphanCr = $this->orphanCrs[$orphanCrIndex] ?? null;
        $this->keterangan = $keterangan;
        $this->showFormConfirmation = true;
    }

    public function closeModalConfirmation()
    {
        $this->showFormConfirmation = false;
    }

    public function saveOrphanCr()
    {
        if (!is_null($this->orphanCr)) {
            OrphanCr::find($this->orphanCr['id'])->update($this->orphanCr);
        }
        $this->showFormConfirmation = false;
        $this->editedOrphanCrIndex = null;
    }

    public function deleteOrphanCr()
    {
        if (!is_null($this->orphanCr)) {
            OrphanCr::find($this->orphanCr['id'])->delete();
        }

        $this->showFormConfirmation = false;
        $this->editedOrphanCrIndex = null;
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
        if (count(CompetitionRecommendation::where('competition_id', $this->competition_recommendation_id)
            ->where('tutor_id', auth()->user()->tutor->id)->where('orphanage_id', $this->orphanageDropdownSort)->get()) == 0) {
            $cr = Competition::find($this->competition_recommendation_id)->competitionRecommendations()->create([
                    'tutor_id' => auth()->user()->tutor->id,
                    'orphanage_id' => $this->orphanageDropdownSort,
                ]);
        } else {
            $cr = CompetitionRecommendation::where('competition_id', $this->competition_recommendation_id)
                ->where('tutor_id', auth()->user()->tutor->id)->where('orphanage_id', $this->orphanageDropdownSort)->first();
        }

        $cr->orphanCrs()->create([
            'orphan_id' => $this->orphanDropdownSort,
            'description' => $this->orphanDescription,
        ]);

        //$this->showForm = false;
        // reset form fields
        // $this->reset();

        // show success message
        // session()->flash('message', 'Kursus berhasil ditambahkan.');
    }

    public function editOrphanCr($orphanCrIndex)
    {
        $this->editedOrphanCrIndex = $orphanCrIndex;
    }

    public function toggleForm()
    {
        $this->showForm = !$this->showForm;
    }

    public function findOrphan($id)
    {
        return Orphan::find($id);
    }
}
