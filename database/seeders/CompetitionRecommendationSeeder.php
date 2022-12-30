<?php

namespace Database\Seeders;

use App\Models\CompetitionRecommendation;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

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
        $create_competition_recommendation = CompetitionRecommendation::factory()->count(20)->create();
        foreach($create_competition_recommendation as $item){
            for ($i = 0; $i < random_int(1, 20);$i++){
                $item->orphanCrs()->create([
                    'orphan_id' => $faker->randomElement($item->orphanage->orphans->pluck('id')->toArray()),
                    'description' => $faker->text(50),
                ]);
            }
        }
    }
}
