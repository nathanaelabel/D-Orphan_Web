<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Competition extends Model
{
    use HasFactory;
    protected $guarded = [
        'id',
    ];
    public function competitionRecommendations()
    {
        return $this->hasMany(CompetitionRecommendation::class);
    }
    public function category(){
        return $this->belongsTo(Skill::class);
    }
}
