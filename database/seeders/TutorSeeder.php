<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Tutor;
use App\Models\User;

class TutorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        foreach(User::all()->where('user_type','Tutor') as $user){
        Tutor::factory()->create([
            'user_id'=>$user->id
        ]);
    }

    }
}
