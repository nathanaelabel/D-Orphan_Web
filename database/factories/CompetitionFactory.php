<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Factory as Faker;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Competition>
 */
class CompetitionFactory extends Factory
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

        return [
            'name' => $faker->sentence(3),
            'registration_start_date' => $faker2->dateTimeBetween($startDate = '+ 10 days', $endDate = '+ 100 days', $timezone = null),
            'url' => $faker2->url(),
            'description' => $faker->text(200),
        ];
    }
}
