<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Permission;


class RouterPermissionSeeder extends Seeder
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
                'id'=>1,
                'route'=>'/dashboard',
                'slug'=>'home',
                'name'=>'Home',
                'icon'=>'home',
                'parent'=>0,
                'status'=>1,    
            ],
            [
                'id'=>2,
                'route'=>'/about',
                'slug'=>'about',
                'name'=>'About',
                'icon'=>'visibility',
                'parent'=>0,
                'status'=>1,    
            ],
            [
                'id'=>3,
                'route'=>'/logout',
                'slug'=>'logout',
                'name'=>'Logout',
                'icon'=>'logout',
                'parent'=>0,
                'status'=>1,    
            ],
            [
                'id'=>4,
                'route'=>'',
                'slug'=>'users',                
                'name'=>'Users',
                'parent'=>0,
                'icon'=>'people',
                'status'=>1,    
            ],
            [
                'id'=>5,
                'route'=>'/list_users',
                'slug'=>'users_list',                
                'name'=>'Users List',
                'parent'=>4,
                'icon'=>'person',
                'status'=>1,    
            ],
            [
                'id'=>6,
                'route'=>'/list_employee',
                'slug'=>'employee',                
                'name'=>'Employee',
                'parent'=>4,
                'icon'=>'badge',
                'status'=>1,    
            ],
            [
                'id'=>7,
                'route'=>'/list_outsource_employee',
                'slug'=>'outsource_employee',                
                'name'=>'Outsource Employee',
                'parent'=>4,
                'icon'=>'person',
                'status'=>1,    
            ],
            [
                'id'=>8,
                'route'=>'/list_customer',
                'slug'=>'customer',                
                'name'=>'Customer',
                'parent'=>4,
                'icon'=>'person',
                'status'=>1,    
            ],[
                'id'=>9,
                'route'=>'/list_suplier',
                'slug'=>'supplier',                
                'name'=>'Supplier',
                'parent'=>4,
                'icon'=>'person',
                'status'=>1,    
            ]
        
        
        ];

        
    
        
            Permission::insert($role);
    }
}
