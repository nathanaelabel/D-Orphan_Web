<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\CourseBookingDayTimeRange;
use App\Models\DayTimeRange;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
      UserSeeder::class,
      TutorSeeder::class,
      DaySeeder::class,
      DayTimeRangeSeeder::class,
      TutorDayTimeRangeSeeder::class,
      OrphanageSeeder::class,
      OrphanSeeder::class,
      SkillSeeder::class,
      CompetitionSeeder::class,
      CourseSeeder::class,
      CourseBookingSeeder::class,
      OrphanCourseBookingSeeder::class,
      CourseBookingDayTimeRangeSeeder::class,
      DonationSeeder::class,
        ]);
    }
}
