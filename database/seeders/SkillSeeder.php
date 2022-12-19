<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Skill;

class SkillSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $skill = ['Chess', 'Swimming', 'Boxing', 'Drawing', 'Singing', 'Painting'];
        $photo = [
            'https://asset.kompas.com/crops/BYiXVrkrI5M3BqjkodmlHRgIcgE=/0x0:6000x4000/750x500/data/photo/2021/03/23/6059de3703046.jpg',
            'https://sportsmatik.com/uploads/matik-sports-corner/matik-know-how/swimming1_1562582117.jpg',
            'https://commonwealthgames.com.au/wp-content/uploads/2022_08_02-Taha-Ahmad.jpg',
            'https://s32625.pcdn.co/wp-content/uploads/2017/11/GettyImages-628064782_drawing-habits-1024x683.jpg.optimal.jpg',
            'https://cdn.mos.cms.futurecdn.net/YkR3EXxwPRhd8q8sGahCJc.jpg',
            'https://mymodernmet.com/wp/wp-content/uploads/2018/05/painting-ideas-3-1.jpg'
        ];
        foreach ($skill as $key => $skill) {
            Skill::create([
                'name' => $skill,
                'photo_path' => $photo[$key]
            ]);
        }
    }
}
