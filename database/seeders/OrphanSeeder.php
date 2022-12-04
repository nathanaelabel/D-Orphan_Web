<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Orphan;
use App\Models\Orphanage;

class OrphanSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        foreach (Orphanage::all() as $orphanage) {
            Orphan::factory()->count($orphanage->member_count)->create([
            'orphanage_id' => $orphanage->id,
            ]);
        }
    }
}
