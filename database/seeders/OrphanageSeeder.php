<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Orphanage;

class OrphanageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        foreach (User::all()->where('user_type', 'Pengurus Panti') as $user) {
            Orphanage::factory()->create([
                'user_id' => $user->id,
            ]);
        }
    }
}
