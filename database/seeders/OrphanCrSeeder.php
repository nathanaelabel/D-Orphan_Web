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
        foreach (Orphan::all() as $orphan) {
            OrphanCr::factory()->count(random_int(1, count(CompetitionRecommendation::all())))->create([
                'orphan_id' => $orphan->id,
            ]);
        }
    }
}
