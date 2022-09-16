<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Role;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {


        $role =  [
        [
            'role_id'=>1,
            'role_name'=>'Superadmin',
            
        ],[
            'role_id'=>2,
            'role_name'=>'Admin',
            
        ],[
            'role_id'=>3,
            'role_name'=>'Users',
            
        ]];

    
        Role::insert( $role);


        $users =  [
            [
              'name' => 'Super Admin',
              'role_id'=>1,
              'email' => 'superadmin@gmail.com',
              'password' => bcrypt('123456'),
            ],
            [
              'name' => 'Admin',
              'role_id'=>2,
              'email' => 'accountadmin@gmail.com',
              'password' => bcrypt('123456'),
            ],
            [
              'name' => 'Users',
              'role_id'=>3,
              'email' => 'projectadmin@gmail.com',
              'password' => bcrypt('123456'),
            ],
          ];
        User::insert($users);
        
    }
}
