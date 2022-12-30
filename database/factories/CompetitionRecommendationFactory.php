<?php

namespace Database\Factories;

use App\Models\Competition;
use App\Models\Orphanage;
use App\Models\Tutor;
use Faker\Factory as Faker;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\CompetitionRecommendation>
 */
class CompetitionRecommendationFactory extends Factory
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
            'tutor_id' => $faker->randomElement(Tutor::all()->pluck('id')),
            'orphanage_id' => $faker->randomElement(Orphanage::all()->pluck('id')),
            'competition_id' => $faker->randomElement(Competition::all()->pluck('id')),
        ];
    }
}
