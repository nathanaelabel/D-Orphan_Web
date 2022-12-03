<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Factory as Faker;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Orphanage>
 */
class OrphanageFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $faker = Faker::create('id_ID');

        return [
            'name' => $faker->company(),
            'photo_url' => 'https://source.unsplash.com/random',
            'description' => Faker::create('id_ID')->text(),
            'member_count' => random_int(10, 100),
        ];
    }
}
