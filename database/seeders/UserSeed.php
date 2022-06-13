<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [
            [
                'name' => 'Geiler Elias Radillo Sarmiento',
                'email' => 'geilerelias@gmail.com',
                'password' => bcrypt('gers150595')
            ],
            [
                'name' => 'Jorge',
                'email' => 'jorgeluisdiz@gmail.com',
                'password' => bcrypt('12345678')
            ],
            [
                'name' => 'Iván Mejia',
                'email' => 'ivanmejia-07@hotmail.com',
                'password' => bcrypt('12345678')
            ],
            [
                'name' => 'JUAN MEJIA',
                'email' => 'juan-mejia92@hotmail.com',
                'password' => bcrypt('12345678')
            ],
            [
                'name' => 'ivan',
                'email' => 'ivan@hotmail.com',
                'password' => bcrypt('12345678')
            ],
            [
                'name' => 'José',
                'email' => 'mejiameloivanjose@gmail.com',
                'password' => bcrypt('12345678'),
            ],
            [
                'name' => 'Iván mejia',
                'email' => 'Rolandojosep@hotmail.com',
                'password' => bcrypt('12345678')
            ],
            [
                'name' => 'Ledis Beatriz Sarmiento',
                'email' => 'ledisbersage@gmail.com',
                'password' => bcrypt('cristiana')
            ]
        ];

        foreach ($users as $value) {
            User::create([
                'name' => $value['name'],
                'email' => $value['email'],
                'password' => $value['password'],
            ]);
        }
    }
}
