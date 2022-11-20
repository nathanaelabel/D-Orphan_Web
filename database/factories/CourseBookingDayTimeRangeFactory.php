<?php

namespace Database\Factories;

use App\Models\DayTimeRange;
use Faker\Factory as Faker;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\course_bookings_day_time_ranges>
 */
class CourseBookingDayTimeRangeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $faker=Faker::create("en_EN");
        return [
            'day_time_range_id'=>$faker->randomElement(DayTimeRange::all()->pluck('id')),
        ];
    }
}
