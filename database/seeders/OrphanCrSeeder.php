<?php

namespace Database\Seeders;

use App\Models\CompetitionRecommendation;
use App\Models\Orphan;
use App\Models\OrphanCr;
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
        OrphanCr::factory()->count(50)->create(
            [
                'orphan_id' => $faker->randomElement(Orphan::all()->pluck('id')->toArray()),
            ]
        );
    }
}
