<?php

namespace Database\Factories;

use Faker\Factory as Faker;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Orphan>
 */
class OrphanFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

    public function definition()
    {
        $faker = Faker::create('id_ID');
        $min = strtotime("47 years ago");
        $max = strtotime("18 years ago");

        $rand_time = mt_rand($min, $max);

        $birth_date = date('Y-m-d H:i:s', $rand_time);
        return [
            'name' => $faker->name(),
            'date_of_birth' =>$birth_date,
            'gender' => $faker->randomElement(['Male', 'Female']),
            'note' => random_int(1, 2) == 1 ? 'Anak ini memiliki disabilitas' : '',
        ];
    }
}
