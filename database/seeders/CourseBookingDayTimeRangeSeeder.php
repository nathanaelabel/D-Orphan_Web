<?php

namespace Database\Seeders;

use App\Models\CourseBooking;
use App\Models\CourseBookingDayTimeRange;
use App\Models\DayTimeRange;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CourseBookingDayTimeRangeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        foreach(CourseBooking::all() as $courseBooking){
            CourseBookingDayTimeRange::factory()->count(random_int(1,3))->create([
                'course_booking_id'=>$courseBooking->id,
            ]);
        }
    }
}
