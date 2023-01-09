<?php

namespace App\Http\Livewire;

use App\Models\Course;
use App\Models\CourseBooking;
use App\Models\CourseBookingDayTimeRange;
use App\Models\Day;
use App\Models\DayTimeRange;
use App\Models\Orphan;
use App\Models\OrphanCourseBooking;
use App\Models\Transaction;
use App\Models\User;
use Illuminate\Database\Eloquent\Collection as EloquentCollection;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class DetailCourseReservation extends Component
{
    public $currentStudent;
    public $startDate;
    public $jam_mulai;
    public $jam_berakhir;
    public $hari_mulai;
    public $error;
    public $studentList;
    public $course;
    public $studentNotRegistered;
    public $days;
    public $dayCount;
    public $location;
    public $totalPrice;
    public $meetingCount;
    public $dayTimeData;

    public function render()
    {
        $this->totalPrice = $this->course->hourly_price * (int)$this->meetingCount  * (int)$this->studentList->count();
        if ($this->totalPrice > Auth::user()->money) {
            $this->error = 'Saldo anda tidak cukup';
        } else if ($this->meetingCount < 1) {
            $this->error = 'Jumlah pertemuan tidak boleh kurang dari 1';
        } else if ($this->dayCount < 1) {
            $this->error = 'Jumlah jadwal tidak boleh kurang dari 1';
        } else {
            $this->error = '';
        }
        return view('livewire.detail-course-reservation');
    }



    public function mount($course_id)
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

        $this->studentList = new EloquentCollection();
        if (Auth::user()->orphanage->orphans->count() != 0) {
            $this->currentStudent = Auth::user()->orphanage->orphans->whereNotIn('id', $this->studentList)->first()->id;
            $this->studentNotRegistered = Auth::user()->orphanage->orphans->whereNotIn('id', $this->studentList);
        } else {
            $this->currentStudent = null;
            $this->studentNotRegistered = [];
        }
        $this->course = Course::find($course_id);
        $this->days = Day::all();
        $this->hari_mulai = [];
        $this->dayCount = 0;
    }

    public function addDay()
    {
        ++$this->dayCount;
    }
    public function deleteDay()
    {
        --$this->dayCount;
    }

    public function deleteStudent($index)
    {
        $this->studentList->forget($index);
        $this->studentNotRegistered = Auth::user()->orphanage->orphans->whereNotIn('id', $this->studentList->pluck('id'));
        $this->currentStudent = $this->studentNotRegistered->first()->id;
    }

    public function addStudent($id)
    {
        $this->studentList->push(Orphan::find($id));
        $this->studentNotRegistered = Auth::user()->orphanage->orphans->whereNotIn('id', $this->studentList->pluck('id'));
        if ($this->studentNotRegistered->count() != 0) {
            $this->currentStudent = $this->studentNotRegistered->first()->id;
        } else {
            $this->currentStudent = null;
            $this->studentList = new Collection();
        }
    }

    public function save()
    {
        if ($this->totalPrice > Auth::user()->money) {
            $this->error = 'Saldo anda tidak cukup';
            return;
        } else {
        }
        $this->validate([
            'meetingCount' => 'required|numeric|min:1',
            'dayCount' => 'required|numeric|min:1',
        ]);
        $t = Transaction::create(
            [
                'user_id' => Auth::user()->id,
                'amount' => $this->totalPrice,
                'status' => 'pending',
                'description' => 'Pemesanan kursus ' . $this->course->name,
                'to_user_id' => $this->course->tutor->user->id,
            ]
        );
        User::find(Auth::user()->id)->decrement('money', $t->amount);
        $cb = CourseBooking::create([
            'course_id' => $this->course->id,
            'orphanage_id' => Auth::user()->orphanage->id,
            'meeting_count' => $this->meetingCount,
            'hour_count' => $this->dayCount,
            'transaction_id' => $t->id,
            'location' => $this->location,
            'is_visit' => ($this->location ? 1 : 0),
            'status' => 'pending',
        ]);
        foreach ($this->studentList as $student) {
            OrphanCourseBooking::create([
                'course_booking_id' => $cb->id,
                'orphan_id' => $student->id,
            ]);
        }
        foreach (range(1, $this->dayCount) as $number) {
            $dtr = DayTimeRange::create([
                'day_id' => $this->hari_mulai[$number]['a'],
                'start_time' => $this->jam_mulai[$number]['a'],
                'end_time' => $this->jam_berakhir[$number]['a'],
            ]);
            CourseBookingDayTimeRange::create([
                'course_booking_id' => $cb->id,
                'day_time_range_id' => $dtr->id,
            ]);
        }
        return redirect()->route('detail-course-booking', $cb->id);
    }
}
