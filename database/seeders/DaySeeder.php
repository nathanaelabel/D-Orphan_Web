<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Day;

class DaySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $day = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"];
        foreach($day as $day){
            Day::create([
                "day"=>$day,
            ]);
        }
    }
}
