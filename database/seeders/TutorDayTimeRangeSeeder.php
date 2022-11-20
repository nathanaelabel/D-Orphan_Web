<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Tutor;
use App\Models\TutorDayTimeRange;
class TutorDayTimeRangeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        foreach(Tutor::all() as $tutor){
            TutorDayTimeRange::factory()->create([
                'tutor_id'=>$tutor->id,
            ]);
        }
    }
}
