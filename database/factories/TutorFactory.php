<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Tutor>
 */
use Faker\Factory as Faker;
class TutorFactory extends Factory
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
            'bank_account' => rand(1111111111,9999999999),
            'description' => $faker->catchPhrase(),
        ];
    }
}
