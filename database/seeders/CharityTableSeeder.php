<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CharityTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $charities = [
            [ "id" => 3, "name" => 'My Giving Account', "is_approved" => 0, "country_id" => 223],
            [ "id" => 4, "name" => 'Oxford Kidney Unit Trust Fund', "is_approved" => 0, "country_id" => 223],
            [ "id" => 5, "name" => 'Human Values Foundation', "is_approved" => 0, "country_id" => 221],
            [ "id" => 6, "name" => 'Mudlarks Community Garden', "is_approved" => 0, "country_id" => 150],
            [ "id" => 7, "name" => 'Belfast Bible College', "is_approved" => 0, "country_id" => 223],
            [ "id" => 8, "name" => 'CILIP Career Development Group', "is_approved" => 0, "country_id" => 223],
            [ "id" => 9, "name" => 'The Inga Foundation', "is_approved" => 0, "country_id" => 223],
            [ "id" => 10, "name" => 'GMGA1', "is_approved" => 0, "country_id" => 100],
            [ "id" => 11, "name" => 'GMGA2', "is_approved" => 0, "country_id" => 223],
            [ "id" => 12, "name" => 'Amigos Worldwide', "is_approved" => 0, "country_id" => 211],
            [ "id" => 13, "name" => 'CAF charity account', "is_approved" => 0, "country_id" => 223]
        ];

        DB::table('charities')->insert($charities);
    }
}
