<?php

namespace App\Http\Livewire;

use Livewire\WithFileUploads;
use App\Models\Day;
use App\Models\DayTimeRange;
use App\Models\TutorDayTimeRange;
use App\Models\User;
use Livewire\Component;

class UserApprove extends Component
{
    use WithFileUploads;
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
    public $gender;
    public $image;
    public $photo_url;

    public function render()
    {
        if (auth()->user()->user_type == 'Tutor') {
            $this->tutorDayTimeRanges = User::find(auth()->user()->id)->tutor->tutorDayTimeRanges;
        }

        return view('livewire.user-approve');
    }

    public function deleteTutorDayTimeRange($index)
    {
        if (count(TutorDayTimeRange::where('tutor_id', auth()->user()->tutor->id)->get()) > 1) {
            TutorDayTimeRange::find($index)->delete();
        }
    }

    public function addData()
    {
        if (auth()->user()->user_type == 'Tutor') {
            if (count(Day::where('day', $this->days[$this->day - 1])->get()) > 0) {
                $getDay = Day::where('day', $this->days[$this->day - 1])->first();
            } else {
                $getDay = Day::create([
                    'day' => $this->days[$this->day - 1],
                ]);
            }
            if (count(DayTimeRange::where('day_id', $getDay->id)->where('start_time', $this->start_time)->where('end_time', $this->end_time)->get()) > 0) {
                $getDayTimeRange = DayTimeRange::where('day_id', $getDay->id)->where('start_time', $this->start_time)->where('end_time', $this->end_time)->first();
            } else {
                $getDayTimeRange = $getDay->dayTimeRanges()->create([
                    'start_time' => $this->start_time,
                    'end_time' => $this->end_time,
                ]);
            }

            if (count(TutorDayTimeRange::where('day_time_range_id', $getDayTimeRange->id)->where('tutor_id', auth()->user()->tutor->id)->get()) == 0) {
                $getDayTimeRange->tutorDayTimeRanges()->create([
                    'tutor_id' => auth()->user()->tutor->id,
                ]);
            }
        }

        if (auth()->user()->is_access == '0') {
            $this->check();
        }
    }

    public function saveUser()
    {
        User::find(auth()->user()->id)->update([
            'phone_number' => $this->phone_number,
            'gender' => $this->gender,
            'address' => $this->address,
        ]);

        if (auth()->user()->user_type == 'Pengurus Panti') {
            $path = $this->image->store('images');
            User::find(auth()->user()->id)->orphanage()->update([
                'name' => $this->name,
                'photo_url' => $path,
                'description' => $this->description,
            ]);
        } elseif (auth()->user()->user_type == 'Tutor') {
            User::find(auth()->user()->id)->tutor()->update([
                'bank_account' => $this->bank_account,
                'description' => $this->description,
            ]);
        }

        $this->showFormConfirmation = false;

        if (auth()->user()->is_access == '0') {
            $this->check();
        }
    }

    public function check()
    {
        // if (auth()->user()->phone_number != null && auth()->user()->address != null) {
        //     if (auth()->user()->user_type == 'Pengurus Panti') {
        //         if (auth()->user()->orphanage->name != null && auth()->user()->orphanage->description != null) {
        //             return redirect()->route('dasbor');
        //         }
        //     } elseif (auth()->user()->user_type == 'Tutor') {
        //         if (auth()->user()->tutor->bank_account != null && auth()->user()->tutor->description != null && count(auth()->user()->tutor->tutorDayTimeRanges) > 0) {
        //             return redirect()->route('dasbor');
        //         }
        //     }
        // }

        if (auth()->user()->phone_number != null && auth()->user()->address != null && auth()->user()->gender != null) {
            if (auth()->user()->user_type == 'Pengurus Panti') {
                if (auth()->user()->orphanage->name != null && auth()->user()->orphanage->description != null) {
                    User::find(auth()->user()->id)->update([
                        'is_access' => '1',
                    ]);

                    return redirect()->route('dasbor');
                }
            } elseif (auth()->user()->user_type == 'Tutor') {
                if (auth()->user()->tutor->bank_account != null && auth()->user()->tutor->description != null && count(auth()->user()->tutor->tutorDayTimeRanges) > 0) {
                    User::find(auth()->user()->id)->update([
                        'is_access' => '1',
                    ]);

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
            $this->image = $this->user->orphanage->photo_url;
            $this->description = $this->user->orphanage->description;
        } else {
            $this->bank_account = $this->user->tutor->bank_account;
            $this->description = $this->user->tutor->description;
        }

        $this->gender = $this->user->gender;
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
