<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrphanCr extends Model
{
    use HasFactory;
    protected $guarded = [
        'id',
    ];
    public function orphan()
    {
        return $this->belongsTo(Orphan::class);
    }
    public function competitionRecommendation()
    {
        return $this->belongsTo(CompetitionRecommendation::class);
    }
}
