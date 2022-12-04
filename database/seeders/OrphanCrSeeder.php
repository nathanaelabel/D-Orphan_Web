<?php

namespace Database\Seeders;

use App\Models\CompetitionRecommendation;
use App\Models\OrphanCr;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class OrphanCrSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');
        foreach (CompetitionRecommendation::all() as $competitionRecommendation) {
            OrphanCr::factory()->create([
                'competition_recommendation_id' => $competitionRecommendation->id,
                'orphan_id' => $faker->randomElement($competitionRecommendation->orphanage->orphans->pluck('id')),
                'description' => $faker->text(50),
            ]);
        }
    }
}
