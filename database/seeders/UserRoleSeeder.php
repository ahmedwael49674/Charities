<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserRoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $userRoles = [
                        ["id" => 1, "user_id" => 1, "role" => 'employee'],
                        ["id" => 2, "user_id" => 2, "role" => 'employee'],
                        ["id" => 3, "user_id" => 3, "role" => 'admin'],
                        ["id" => 4, "user_id" => 5, "role" => 'admin_applications'],
                        ["id" => 5, "user_id" => 5, "role" => 'admin_reports'],
                        ["id" => 6, "user_id" => 4, "role" => 'admin'],
                        ["id" => 7, "user_id" => 3, "role" => 'admin'],
                        ["id" => 8, "user_id" => 4, "role" => 'admin_applications'],
                    ];
        //create user roles
        DB::table('user_roles')->insert($userRoles);
    }
}
