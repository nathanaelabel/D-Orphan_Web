<?php

namespace Database\Factories;

use App\Models\Orphanage;
use App\Models\Transaction;
use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Factory as Faker;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Donation>
 */
class DonationFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $faker = Faker::create('id_ID');
        $amount = random_int(10000, 300000);
        $orphanage = Orphanage::all()->random(1)->first();

        return [
            'orphanage_id' => $orphanage->id,
            'donator_name' => $faker->randomElement(['Anonymous', $faker->name()]),
            'amount' => $amount,
            'message' => 'Semoga membantu ya!',
            'transaction_id' => Transaction::create([
                'user_id' => $orphanage->user->id,
                'amount' => $amount,
                'to_user_id' => $orphanage->user->id,
                'status' => $faker->randomElement(['complete', 'canceled', 'pending']),
                'description' => 'Donasi kepada '.$orphanage->name,
            ]),
        ];
    }
}
