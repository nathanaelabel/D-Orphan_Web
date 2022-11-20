<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Tutor;
use App\Models\Course;

class CourseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        foreach(Tutor::all() as $tutor){
            Course::factory()->count(random_int(1,5))->create([
                'tutor_id'=>$tutor->id
            ]);
        }
    }
}
