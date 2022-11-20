<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Orphanage extends Model
{
    use HasFactory;
    public function orphans(){
        return $this->hasMany(Orphan::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
}
