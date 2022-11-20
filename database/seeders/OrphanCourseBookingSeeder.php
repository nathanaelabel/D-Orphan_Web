<?php

namespace Database\Seeders;

use App\Models\CourseBooking;
use App\Models\OrphanCourseBooking;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class OrphanCourseBookingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('en_EN');

        foreach(CourseBooking::all() as $courseBooking){
            for($i=random_int(1,$courseBooking->course->maximum_member);$i>0;$i--){
                OrphanCourseBooking::create([
                    'course_booking_id'=>$courseBooking->id,
                    'orphan_id'=>$faker->randomElement($courseBooking->orphanage->orphans
                    ->whereNotIn('id',OrphanCourseBooking::all()
                    ->where('id',$courseBooking->id)->pluck('orphan_id'))->pluck('id')),
                ]);
            };

        }
    }
}
