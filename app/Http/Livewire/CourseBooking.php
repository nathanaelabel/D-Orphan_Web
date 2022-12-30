<?php

namespace App\Http\Livewire;

use App\Models\CourseBooking as ModelsCourseBooking;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class CourseBooking extends Component
{
    public $courseBooking;
    public $hasOrphanage;
    public $activeTab;
    public $nameTab;

    public function render()
    {
        return view('livewire.course-booking')->with('courseBooking', $this->courseBooking);
    }

    public function mount()
    {
        if (Auth::user()->orphanage) {
            $this->hasOrphanage = true;
        } else {
            $this->hasOrphanage = false;
        }
        if (is_null($this->nameTab)) {
            $this->setTab('pending');
        } else {
            $this->setTab($this->nameTab);
        }
    }

    public function setTab($tab)
    {
        $data = '';
        $this->activeTab = $tab;
        if (Auth::user()->tutor) {
            if (Auth::user()->tutor->courses) {
                $data = ModelsCourseBooking::whereIn('course_id', Auth::user()->tutor->courses->pluck('id'))
                    ->orderBy('updated_at', 'ASC')
                    ->get();
            }
        } else {
            if ($this->hasOrphanage == true) {
                $data = ModelsCourseBooking::whereIn('course_id', Auth::user()->orphanage->courseBookings->pluck('course_id'))
                ->where('orphanage_id', auth()->user()->orphanage->id)
                    ->orderBy('updated_at', 'ASC')
                    ->get();
            } else {
                $data = collect([]);
            }
        }
        if ($this->activeTab != 'canceled') {
            $this->courseBooking = $data->where('status', $this->activeTab);
        } else {
            $this->courseBooking = $data->where('status', 'canceled')->merge($data->where('status', 'complete'));
        }
    }

    public function accept($id)
    {
        $courseBooking = ModelsCourseBooking::find($id);
        $courseBooking->status = 'ongoing';
        $courseBooking->save();
        $this->setTab($this->activeTab);
    }

    public function decline($id)
    {
        $courseBooking = ModelsCourseBooking::find($id);
        $courseBooking->status = 'canceled';
        $courseBooking->save();
        $this->setTab($this->activeTab);
    }

    public function complete($id)
    {
        $courseBooking = ModelsCourseBooking::find($id);
        $courseBooking->status = 'complete';
        $courseBooking->save();
        $this->setTab($this->activeTab);
    }
}
