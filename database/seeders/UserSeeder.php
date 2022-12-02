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
        User::factory()->count(25)->create([
            'user_type' => 'Tutor',
            'gender' => 'Male',
        ]);
        User::factory()->count(25)->create([
            'user_type' => 'Tutor',
            'gender' => 'Female',
        ]);
        User::factory()->count(25)->create([
            'user_type' => 'Pengurus Panti',
            'gender' => 'Male',
        ]);
        User::factory()->count(25)->create([
            'user_type' => 'Pengurus Panti',
            'gender' => 'Female',
        ]);
    }
}
