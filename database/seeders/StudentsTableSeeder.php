<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StudentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
   // database/seeders/StudentsTableSeeder.php
public function run()
{
    DB::table('students')->insert([
        ['name' => 'Rebeca Edson', 'program' => 'Software Engineering'],
        ['name' => 'Neema jamari', 'program' => 'Computer Science'],
        ['name' => 'janeth kimombo', 'program' => 'Software Engineering'],
        ['name' => 'Sansai kido', 'program' => 'Information Technology'],
        ['name' => 'David kidum', 'program' => 'Software Engineering'],
        ['name' => 'Roda Hamis', 'program' => 'Computer Science'],
        ['name' => 'Amina Londido', 'program' => 'Software Engineering'],
        ['name' => 'Jennifer Taylor', 'program' => 'Information Technology'],
        ['name' => 'Thomas Moore', 'program' => 'Software Engineering'],
        ['name' => 'Lucas kibo', 'program' => 'Computer Science'],
        ['name' => 'Ombeni Samanda', 'program' => 'Computer Science'],
    ]);
}

}
