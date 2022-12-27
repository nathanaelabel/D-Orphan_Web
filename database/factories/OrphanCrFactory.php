<?php

namespace Database\Factories;

use App\Models\CompetitionRecommendation;
use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Factory as Faker;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\OrphanCr>
 */
class OrphanCrFactory extends Factory
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
            'competition_recommendation_id' => random_int(1, count(CompetitionRecommendation::all())),
            'description' => $faker->text(50),
        ];
    }
}
