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
    public $editedOrphanIndex;
    public $orphanDropdownSort;
    public $sumcourses;
    public $sumrecommendation;
    public $name;
    public $date_of_birth;
    public $gender = 'Male';
    public $note;
    public $keterangan;
    public $showForm;
    public $orphan;
    public $showFormConfirmation;

    public function toggleForm()
    {
        $this->showForm = !$this->showForm;
    }

    public function render()
    {
        // Sortir secara default berdasarkan Abjad Nama
        if (!isset($this->orphanDropdownSort)) {
            $this->orphanDropdownSort = 'Abjad Nama';
        }

        $this->orphans = [];
        $orphanOrdered_course = [];
        $orphanOrdered_Cr = [];

        // Membuat daftar total kursus panti
        $courseBookingOrdered = CourseBooking::where('status', 'complete')
            ->where('orphanage_id', auth()->user()->orphanage->id)
            ->pluck('id')
            ->toArray();
        // if (count($courseBookingOrdered) > 0) {
        $orphanIdList = Orphan::where('orphanage_id', auth()->user()->orphanage->id)->pluck('id')->toArray();
        $orphanOrdered_course = OrphanCourseBooking::whereIn('course_booking_id', $courseBookingOrdered)
                ->whereIn('orphan_id', $orphanIdList)
                ->groupBy('orphan_id')
                ->selectRaw('count(*) as total, orphan_id')
                ->get();
        $this->sumcourses = $orphanOrdered_course->pluck('total')->toArray();
        $orphanOrdered_course = $orphanOrdered_course->pluck('orphan_id')->toArray();

        $is0course = Orphan::where('orphanage_id', auth()->user()->orphanage->id)
                ->whereNotIn('id', $orphanOrdered_course)
                ->selectRaw('id, name, 0 as total')
                ->get();
        $this->sumcourses = array_merge($is0course->pluck('total')->toArray(), $this->sumcourses);
        $orphanOrdered_course = array_merge($is0course->pluck('id')->toArray(), $orphanOrdered_course);
        // }

        // Membuat daftar total lomba panti
        $competitionRecommendationOrdered = CompetitionRecommendation::where('orphanage_id', auth()->user()->orphanage->id)
            ->where('orphanage_id', auth()->user()->orphanage->id)
            ->pluck('id')
            ->toArray();
        // if (count($competitionRecommendationOrdered) > 0) {
        $orphanIdList = Orphan::where('orphanage_id', auth()->user()->orphanage->id)->pluck('id')->toArray();
        $orphanOrdered_Cr = OrphanCr::whereIn('competition_recommendation_id', $competitionRecommendationOrdered)
                ->whereIn('orphan_id', $orphanIdList)
                ->groupBy('orphan_id')
                ->selectRaw('count(*) as total, orphan_id')
                ->get();
        $this->sumrecommendation = $orphanOrdered_Cr->pluck('total')->toArray();
        $orphanOrdered_Cr = $orphanOrdered_Cr->pluck('orphan_id')->toArray();

        $is0Cr = Orphan::where('orphanage_id', auth()->user()->orphanage->id)
                ->whereNotIn('id', $orphanOrdered_Cr)
                ->selectRaw('id, name, 0 as total')
                ->get();
        $this->sumrecommendation = array_merge($is0Cr->pluck('total')->toArray(), $this->sumrecommendation);
        $orphanOrdered_Cr = array_merge($is0Cr->pluck('id')->toArray(), $orphanOrdered_Cr);
        // }

        // Menambahkan kolom total_kursus dan total_lomba pada tabel
        if (count($orphanOrdered_course) > 0 && count($orphanOrdered_Cr) > 0) {
            $ids_ordered_course = implode(',', $orphanOrdered_course);
            $ids_ordered_Cr = implode(',', $orphanOrdered_Cr);
            $this->sumcourses = implode(',', $this->sumcourses);
            $this->sumrecommendation = implode(',', $this->sumrecommendation);

            $this->orphans = Orphan::whereIn('id', $orphanOrdered_course)
                ->where('orphanage_id', auth()->user()->orphanage->id)
                ->selectRaw("*, ELT(FIELD(id, $ids_ordered_course), $this->sumcourses) as total_kursus
                                                    , ELT(FIELD(id, $ids_ordered_Cr), $this->sumrecommendation) as total_lomba");

            if ($this->orphanSearch != null) {
                if ($this->orphanDropdownSort == 'Abjad Nama') {
                    $this->orphans = $this->orphans->where('name', 'like', '%' . $this->orphanSearch . '%')
                        ->orderBy('name', 'ASC')
                        ->get()->toArray();
                } elseif ($this->orphanDropdownSort == 'Total Kursus Berhasil') {
                    $this->orphans = $this->orphans->where('name', 'like', '%' . $this->orphanSearch . '%')
                        ->orderBy('total_kursus', 'DESC')
                        ->get()->toArray();
                } else {
                    $this->orphans = $this->orphans->where('name', 'like', '%' . $this->orphanSearch . '%')
                        ->orderBy('total_lomba', 'DESC')
                        ->get()->toArray();
                }
            } else {
                if ($this->orphanDropdownSort == 'Abjad Nama') {
                    $this->orphans = $this->orphans->orderBy('name', 'ASC')
                        ->get()->toArray();
                } elseif ($this->orphanDropdownSort == 'Total Kursus Berhasil') {
                    $this->orphans = $this->orphans->orderBy('total_kursus', 'DESC')
                        ->get()->toArray();
                } else {
                    $this->orphans = $this->orphans->orderBy('total_lomba', 'DESC')
                        ->get()->toArray();
                }
            }
        }
        return view('livewire.kelola-panti-asuhan');
    }

    public function mount()
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

        $this->editedOrphanIndex = null;
        $this->showForm = false;
        $this->showFormConfirmation = false;
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

    public function openModalConfirmation($orphanIndex, $keterangan)
    {
        $this->orphan = $this->orphans[$orphanIndex] ?? null;
        $this->keterangan = $keterangan;
        $this->showFormConfirmation = true;
    }

    public function closeModalConfirmation()
    {
        $this->showFormConfirmation = false;
    }

    public function saveOrphan()
    {
        if (!is_null($this->orphan)) {
            Orphan::find($this->orphan['id'])->update($this->orphan);
        }

        $this->showFormConfirmation = false;
        $this->editedOrphanIndex = null;
    }

    public function deleteOrphan()
    {
        if (!is_null($this->orphan)) {
            Orphan::find($this->orphan['id'])->delete();
        }

        $this->showFormConfirmation = false;
        $this->editedOrphanIndex = null;
    }

    public function addData()
    {
        $this->validate([
            'name' => 'required',
            'date_of_birth' => 'required',
            'gender' => 'required',
        ], [
            'name.required' => 'Nama harus diisi.',
            'date_of_birth.required' => 'Tanggal lahir harus diisi.',
            'gender.required' => 'Jenis kelamin harus diisi.',
        ]);

        Orphan::create([
            'orphanage_id' => auth()->user()->orphanage->id,
            'name' => $this->name,
            'date_of_birth' => $this->date_of_birth,
            'gender' => $this->gender,
            'note' => $this->note,
        ]);

        // reset form fields
        $this->reset();
        $this->showForm = false;
        // show success message
        session()->flash('message', 'Anak panti berhasil ditambahkan.');
    }
}
