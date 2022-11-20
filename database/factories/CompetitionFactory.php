<?php

namespace Database\Factories;

use App\Models\Skill;
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
            'title'=>$faker->sentence(),
            'location'=>$faker2->city(),
            'description'=>'Lorem Ipsum, Ini adalah deskripsi lomba',
            'category'=>$faker->randomElement(Skill::all()->pluck('id'))
        ];
    }
}
