<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Faker\Factory as Faker;
use App\Models\Skill;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Course>
 */
class CourseFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $faker = Faker::create('en_EN');
        $faker2 = Faker::create('id_ID');

        return [
            'skill_id' => $faker->randomElement(Skill::all()->pluck('id')),
            'description'=>'Asah dan kembangkan melalui kursus ini!',
            'location'=>$faker2->city(),
            'is_online'=>random_int(0,1),
            'is_visit'=>random_int(0,1),
            'maximum_member'=>random_int(3,20),
            'tool_price'=>$faker->randomElement([0,20000,300000,250000,40000,25000]),
            'tool_description'=>'Peralatan terkait untuk menunjang kebutuhan murid',
            'hourly_price'=>random_int(50000,150000),

        ];
    }
}
