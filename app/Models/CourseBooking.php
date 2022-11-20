<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CourseBooking extends Model
{
    use HasFactory;

    public function orphanage(){
        return $this->belongsTo(Orphanage::class);
    }
    public function course(){
        return $this->belongsTo(Course::class);
    }


}
