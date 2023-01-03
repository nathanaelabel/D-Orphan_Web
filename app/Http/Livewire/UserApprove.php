<?php

namespace App\Http\Livewire;

use App\Models\Day;
use App\Models\DayTimeRange;
use App\Models\TutorDayTimeRange;
use App\Models\User;
use Livewire\Component;

class UserApprove extends Component
{
    public $name;
    public $description;
    public $bank_account;
    public $phone_number;
    public $address;
    public $user;
    public $showFormConfirmation;
    public $targetPage;
    public $days;
    public $day;
    public $start_time;
    public $end_time;
    public $tutorDayTimeRanges;

    public function render()
    {
        $this->tutorDayTimeRanges = User::find(auth()->user()->id)->tutor->tutorDayTimeRanges;

        return view('livewire.user-approve');
    }

    public function deleteTutorDayTimeRange($index)
    {
        TutorDayTimeRange::find($index)->delete();
    }

    public function addData()
    {
        if (count(Day::where('day', $this->days[$this->day - 1])->get()) > 0) {
            $getDay = Day::where('day', $this->days[$this->day - 1])->first();
        } else {
            $getDay = Day::create([
                'day' => $this->days[$this->day - 1],
            ]);
        }
        if (count(DayTimeRange::where('day_id', $getDay->id)->where('start_time', $this->start_time)->where('end_time', $this->end_time)->get())) {
            $getDayTimeRange = DayTimeRange::where('day_id', $getDay->id)->where('start_time', $this->start_time)->where('end_time', $this->end_time)->first();
        } else {
            $getDayTimeRange = $getDay->dayTimeRanges()->create([
                'start_time' => $this->start_time,
                'end_time' => $this->end_time,
            ]);
        }

        $getDayTimeRange->tutorDayTimeRanges()->create([
            'tutor_id' => auth()->user()->tutor->id,
        ]);

        $this->check();
    }

    public function saveUser()
    {
        User::find(auth()->user()->id)->update([
            'phone_number' => $this->phone_number,
            'address' => $this->address,
        ]);

        if (auth()->user()->user_type == 'Pengurus Panti') {
            User::find(auth()->user()->id)->orphanage()->update([
                'name' => $this->name,
                'description' => $this->description,
            ]);
        } elseif (auth()->user()->user_type == 'Tutor') {
            User::find(auth()->user()->id)->tutor()->update([
                'bank_account' => $this->bank_account,
                'description' => $this->description,
            ]);
        }

        $this->showFormConfirmation = false;

        $this->check();
    }

    public function check()
    {
        if (auth()->user()->phone_number != null && auth()->user()->address != null) {
            if (auth()->user()->user_type == 'Pengurus Panti') {
                if (auth()->user()->orphanage->name != null && auth()->user()->orphanage->description != null) {
                    return redirect()->route('dasbor');
                }
            } elseif (auth()->user()->user_type == 'Tutor') {
                if (auth()->user()->tutor->bank_account != null && auth()->user()->tutor->description != null && count(auth()->user()->tutor->tutorDayTimeRanges) > 0) {
                    return redirect()->route('dasbor');
                }
            }
        }
    }

    public function mount()
    {
        $this->user = User::find(auth()->user()->id);
        $this->resetForm();
        $this->days = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'];
        $this->showFormConfirmation = false;
        $this->day = 1;
    }

    public function resetForm()
    {
        if (auth()->user()->user_type == 'Pengurus Panti') {
            $this->name = $this->user->orphanage->name;
            $this->description = $this->user->orphanage->description;
        } else {
            $this->bank_account = $this->user->tutor->bank_account;
            $this->description = $this->user->tutor->description;
        }

        $this->phone_number = $this->user->phone_number;
        $this->address = $this->user->address;
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
