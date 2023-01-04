<?php

namespace App\Http\Livewire;

use App\Models\CourseBooking as ModelsCourseBooking;
use App\Models\Transaction;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class CourseBooking extends Component
{
    public $courseBooking;
    public $hasOrphanage;
    public $activeTab;
    public $nameTab;
    public $adminTransactions;

    public function render()
    {
        if (auth()->user()->user_type == 'Admin') {
            return view('livewire.saldo-manage-admin');
        } else {
            return view('livewire.course-booking')->with('courseBooking', $this->courseBooking);
        }
    }

    public function mount()
    {
        // if (auth()->user()->phone_number == null || auth()->user()->address == null) {
        //     return redirect()->route('user-approve');
        // }

        // if (auth()->user()->user_type == 'Pengurus Panti') {
        //     if (auth()->user()->orphanage->name == null || auth()->user()->orphanage->description == null) {
        //         return redirect()->route('user-approve');
        //     }
        // } elseif (auth()->user()->user_type == 'Tutor') {
        //     if (auth()->user()->tutor->bank_account == null || auth()->user()->tutor->description == null || count(auth()->user()->tutor->tutorDayTimeRanges)==0) {
        //         return redirect()->route('user-approve');
        //     }
        // }

        if (auth()->user()->is_access == '0') {
            return redirect()->route('user-approve');
        }

        if (auth()->user()->user_type == 'Admin') {
            $this->setTab('pending');
        } else {
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
    }

    public function setTab($tab)
    {
        $data = '';
        $this->activeTab = $tab;
        if (auth()->user()->user_type != 'Admin') {
            if (Auth::user()->tutor) {
                if (Auth::user()->tutor->courses) {
                    $data = ModelsCourseBooking::whereIn('course_id', Auth::user()->tutor->courses->pluck('id'))
                        ->orderBy('updated_at', 'ASC')
                        ->get();
                }
            } else {
                if ($this->hasOrphanage) {
                    $data = ModelsCourseBooking::whereIn('course_id', Auth::user()->orphanage->courseBookings->pluck('course_id'))
                        ->where('orphanage_id', auth()->user()->orphanage->id)
                        ->orderBy('updated_at', 'ASC')
                        ->get();
                } else {
                    $data = collect([]);
                }
            }
        } else {
            $data = Transaction::where('to_user_id', null)->orderBy('updated_at', 'ASC')->get();
        }
        if ($this->activeTab != 'canceled') {
            if (auth()->user()->user_type != 'Admin') {
                $this->courseBooking = $data->where('status', $this->activeTab);
            } else {
                $this->adminTransactions = $data->where('status', $this->activeTab);
            }
        } else {
            if (auth()->user()->user_type != 'Admin') {
                $this->courseBooking = $data->where('status', 'canceled')->merge($data->where('status', 'complete'));
            } else {
                $this->adminTransactions = $data->where('status', 'canceled')->merge($data->where('status', 'complete'));
            }
        }
    }

    public function accept($id)
    {
        $courseBooking = ModelsCourseBooking::find($id);
        $courseBooking->status = 'ongoing';
        $courseBooking->save();
        $this->setTab($this->activeTab);
    }

    public function acceptTransaction($id)
    {
        Transaction::find($id)->userRequest()->update([
            'money' => Transaction::find($id)->userRequest->money + Transaction::find($id)->amount,
                    ]);

        Transaction::find($id)->update([
            'status' => 'complete',
        ]);

        $this->setTab($this->activeTab);
    }

    public function decline($id)
    {
        $courseBooking = ModelsCourseBooking::find($id);
        $courseBooking->status = 'canceled';
        $courseBooking->save();
        $this->setTab($this->activeTab);
    }

    public function declineTransaction($id)
    {
        Transaction::find($id)->update([
            'status' => 'canceled',
        ]);

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
