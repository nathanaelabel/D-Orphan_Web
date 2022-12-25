<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Factory as Faker;
use App\Models\Course;

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
        $getCourse = $faker->randomElement(Course::all()->pluck('id'));
        $is_visit = Course::findOrFail($getCourse)->is_visit == 1 ? rand(0, 1) : null;

        if (Course::find($getCourse)->is_online == 1) {
            $is_visit = 0;
            $location = Course::find($getCourse)->location;
        } else {
            if (Course::find($getCourse)->is_visit == 1) {
                $location = '';
            } else {
                $location = Course::find($getCourse)->location;
            }
        }

        return [
            'course_id' => $getCourse,
            'hour_count' => random_int(1, 30),
            'status' => $status,
            'is_visit' => $is_visit,
            'location' => $location,
        ];
    }

    public function withOrphanage($orphanage)
    {
    }
}
