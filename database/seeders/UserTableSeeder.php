<?php

namespace Database\Seeders;

use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $password = bcrypt("12345678");
        $users = [
            ["id" => 1, "name" => 'Employee 1', "password" => $password,
            "email" => 'employee1@givingforce.com', "token" => "MCVv5C1obxcHwlTNTdJSFk8cQ8QSum7pblUPgIu1Cfpuy0KQtL4Lxql7pKWG"],
            ["id" => 2, "name" => 'Employee 2', "password" => $password,
            "email" => 'employee2@givingforce.com', "token" => "ACVFfosEel6kl4jV8nUINN8GG8HktMUXMKfWBCulVbs4s3iS1wh4Iu8RvFVz"],
            ["id" => 3, "name" => 'Admin 1', "password" => $password,
            "email" => 'admin1@givingforce.com', "token" => "iivDmy4nPbvxKuBwinAaqK0h8nXjrrOuEo1TOz1JFhNt34XNOdpaxhlScdOg"],
            ["id" => 4, "name" => 'Admin 2', "password" => $password,
            "email" => 'admin2@givingforce.com', "token" => "IAR7vJwrHfT3mDrBeK3RukVhJ9GyZP6LJ4sx9I7nE3PORpJeG2sDFzeujpxl"],
            ["id" => 5, "name" => 'Admin 3', "password" => $password,
            "email" => 'admin3@givingforce.com', "token" => "t2ZEVWqY9czuuvicwv8i91H4ZVzvmbZtLCAa9EHUBkV5Hiq9nVhAuU8xjhR4"],
        ];

        DB::table('users')->insert($users);
    }
}
