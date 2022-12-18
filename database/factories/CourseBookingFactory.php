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
        $status = $faker->randomElement(['pending', 'ongoing', 'complete', 'canceled']);
        $faker = Faker::create('en_EN');
        $getCourse = $faker->randomElement(Course::all()->pluck('id'));
        $is_visit = Course::findOrFail($getCourse)->is_visit == 1 ? rand(0,1):null;
        return  [
            'course_id' => $getCourse,
            'start_date' => $faker->dateTimeThisYear(),
            'hour_count' => random_int(1, 30),
            'address' => $faker->address,
            'status' => $status,
            'is_visit' => $is_visit,

        ];
    }

    public function withOrphanage($orphanage)
    {

    }
}
