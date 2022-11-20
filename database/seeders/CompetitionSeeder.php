<?php

namespace Database\Seeders;

use Database\Factories\OrphanageFactory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Tutor;

use App\Models\Competition;

class CompetitionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        foreach(Tutor::all() as $tutor){
            Competition::factory()->count(2)->create([
                'tutor_id'=>$tutor->id
            ]);
        }
    }
}
