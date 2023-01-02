<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::factory()->create([
            'gender' => '-',
            'money' => 0,
            'user_type' => 'Admin',
        ]);

        User::factory()->count(50)->create();
    }
}
