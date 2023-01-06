<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Orphanage extends Model
{
    use HasFactory;
    protected $guarded = [
        'id',
    ];

    public function orphans()
    {
        return $this->hasMany(Orphan::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function courseBookings()
    {
        return $this->hasMany(CourseBooking::class);
    }
    public function donations()
    {
        return $this->hasMany(Donation::class);
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
