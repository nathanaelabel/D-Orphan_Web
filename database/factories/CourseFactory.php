<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Factory as Faker;
use App\Models\Skill;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Course>
 */
class CourseFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $faker = Faker::create('en_EN');
        $faker2 = Faker::create('id_ID');

        $is_online = random_int(0, 1);
        $is_visit = 0;

        if ($is_online == 1) {
            $location = $faker->url();
        } else {
            $is_visit = random_int(0, 1);
            if ($is_visit == 1) {
                $location = null;
            } else {
                $location = $faker2->address();
            }
        }

        return [
            'skill_id' => $faker->randomElement(Skill::all()->pluck('id')),
            'name' => $faker2->sentence(5),
            'description' => 'Asah dan kembangkan melalui kursus ini!',
            'location' => $location,
            'is_online' => $is_online,
            'is_visit' => $is_visit,
            'maximum_member' => random_int(3, 20),
            'tool_price' => $faker->randomElement([0, 20000, 300000, 250000, 40000, 25000]),
            'tool_description' => 'Peralatan terkait untuk menunjang kebutuhan murid',
            'hourly_price' => random_int(50000, 150000),
        ];
    }
}
