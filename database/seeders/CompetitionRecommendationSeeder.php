<?php

namespace Database\Seeders;

use App\Models\Competition;
use App\Models\CompetitionRecommendation;
use App\Models\Orphanage;
use App\Models\Tutor;
use Faker\Factory as Faker;
use Illuminate\Database\Seeder;

class CompetitionRecommendationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
        foreach (Competition::all() as $competition) {
            CompetitionRecommendation::factory()->create([
                'tutor_id' => $faker->randomElement(Tutor::all()->pluck('id')),
                'orphanage_id' => $faker->randomElement(Orphanage::all()->pluck('id')),
                'competition_id' => $competition->id,
            ]);
        }
    }
}
