<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Orphan extends Model
{
    use HasFactory;
    protected $guarded = [
        'id',
    ];

    public function orphanCourseBookings()
    {
        return $this->hasMany(OrphanCourseBooking::class);
    }

    public function orphanCrs()
    {
        return $this->hasMany(OrphanCr::class);
    }

    public function orphanage()
    {
        return $this->belongsTo(Orphanage::class);
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
