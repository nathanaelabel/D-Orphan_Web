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
            'photo_url' => 'https://picsum.photos/id/' . random_int(1, 250) . '/640',
            'registration_start_date' => $faker2->dateTimeBetween($startDate = '+ 10 days', $endDate = '+ 100 days', $timezone = null)->format('Y-m-d'),
            'registration_start_hour' => $faker2->dateTimeBetween($startDate = '+ 10 days', $endDate = '+ 100 days', $timezone = null)->format('H:i'),
            'url' => $faker2->url(),
            'jenjang' => $faker2->randomElement(['Regional', 'Nasional', 'Internasional']),
            'description' => $faker->text(200),
        ];
    }
}
