<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Day;
use App\Models\DayTimeRange;

class DayTimeRangeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $minimum_time = strtotime("07:00:00");
        $maximum_time = strtotime("21:00:00");
        foreach (Day::all() as $day) {
            for ($i = 10; $i > 0; $i--) {
                $rand = rand($minimum_time, $maximum_time);
                $rounded_seconds = round($rand / (30 * 60)) * (30 * 60);
                $start_time = date("H:i", $rounded_seconds);
                DayTimeRange::create([
                    "day_id" => $day->id,
                    "start_time" => $start_time,
                    "end_time" => date("H:i", ($rounded_seconds+(3600*random_int(1,5))))
                ]);
            } 
        }
    }
}
