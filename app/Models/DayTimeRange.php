<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class DayTimeRange extends Model
{
    use HasFactory;
    protected $guarded = [
        'id',
    ];

    public function tutorDayTimeRanges()
    {
        return $this->hasMany(TutorDayTimeRange::class);
    }

    public function day()
    {
        return $this->belongsTo(Day::class);
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
