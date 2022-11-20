<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Factory as Faker;
use App\Models\DayTimeRange;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\tutor_day_time_range>
 */
class TutorDayTimeRangeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $faker = Faker::create('en_EN');
        return [
            'day_time_range_id' => $faker->randomElement(DayTimeRange::all()->pluck('id')),
        ];
    }
}
