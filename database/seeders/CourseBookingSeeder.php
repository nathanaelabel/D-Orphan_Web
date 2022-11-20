<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Orphanage;
use App\Models\CourseBooking;
use App\Models\Transaction;
use Faker\Factory as Faker;

class CourseBookingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        foreach(Orphanage::all() as $orphanage){
           
            CourseBooking::factory()->count(random_int(0,5))->create([
                'orphanage_id'=>$orphanage->id
            ]);
            
        }

        foreach(CourseBooking::all() as $courseBooking){
            $courseBooking->transaction_id = Transaction::create([
                'user_id' => $courseBooking->orphanage->user->id,
                'amount' => $courseBooking->total_price,
                'status' => $courseBooking->status == 'ongoing' ? 'complete' : $courseBooking->status,
                'description' => 'Pembayaran kursus oleh ' . $courseBooking->orphanage->name,
                'to_user_id' => $courseBooking->course->tutor->id,

            ])->id;
            $courseBooking->save();
        }
    }
}
