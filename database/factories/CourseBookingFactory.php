<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Factory as Faker;
use App\Models\Course;
use App\Models\Transaction;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\CourseBooking>
 */
class CourseBookingFactory extends Factory
{

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

    public function definition()
    {
        $faker = Faker::create('en_EN');
        $total_price = random_int(200000, 1000000);
        $status = $faker->randomElement(['pending', 'ongoing', 'complete', 'canceled']);
        $faker = Faker::create('en_EN');
        return  [
            'course_id' => $faker->randomElement(Course::all()->pluck('id')),
            'start_date' => $faker->dateTimeThisYear(),
            'hour_count' => random_int(1, 30),
            'total_price' => $total_price,
            'status' => $status,

        ];
    }

    public function withOrphanage($orphanage)
    {

    }
}
