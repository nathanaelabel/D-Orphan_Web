<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class TutorDayTimeRange extends Model
{
    use HasFactory;
    protected $guarded = [
        'id',
    ];

    public function dayTimeRange()
    {
        return $this->belongsTo(DayTimeRange::class);
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
