<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class CourseBooking extends Model
{
    use HasFactory;
    protected $guarded = [
        'id',
    ];

    public function orphanage()
    {
        return $this->belongsTo(Orphanage::class);
    }

    public function course()
    {
        return $this->belongsTo(Course::class);
    }

    public function transaction()
    {
        return $this->belongsTo(Transaction::class);
    }

    public function orphanCourseBookings()
    {
        return $this->hasMany(OrphanCourseBooking::class);
    }

    public function courseBookingDayTimeRanges()
    {
        return $this->hasMany(CourseBookingDayTimeRange::class);
    }

    public function getCreatedAtAttribute($value)
    {
        return Carbon::createFromTimestamp(strtotime($value))
            ->timezone('Asia/Jakarta')
            ->toDateTimeString()
        ;
    }

    public function getUpdatedAtAttribute($value)
    {
        return Carbon::createFromTimestamp(strtotime($value))
            ->timezone('Asia/Jakarta')
            ->toDateTimeString()
        ;
    }
}
