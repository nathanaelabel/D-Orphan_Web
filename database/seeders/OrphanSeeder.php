<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
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
        foreach(Orphanage::all() as $orphanage){
            Orphan::factory()->count(random_int(10,30))->create([
            'orphanage_id'=>$orphanage->id,
            ]);
        }
    
    }
}
