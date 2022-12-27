<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

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
}
