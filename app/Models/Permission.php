<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    use HasFactory;
    protected $table = 'routepermissions';
    protected $guarded = [];
        public function subchildren()
        {

        return $this->hasMany('App\Models\Permission', 'id', 'parent')->orderBy('id')->select("id",'parent','name as label','route as url','status as Permissions','icon');
        }

        public function children()
        {

        return $this->hasMany('App\Models\Permission', 'parent', 'id')->with('subchildren','children')->orderBy('id')->select("id",'parent','name as label','route as url','status as Permissions','icon');
        }
        public function tree() {

        return static::with('children')->where('parent', '=', '0')->orderBy('id')->select("id",'parent','name as label','route as url','status as Permissions','icon')->get();

        }


   
    
}
