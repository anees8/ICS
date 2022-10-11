<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use App\Models\Role;

class AuthController extends Controller
{
public function register(Request $request){
    $requestData = $request->all();
    $validator = Validator::make($requestData,[
    'name' => 'required|max:55',
    'email' => 'email|required|unique:users',
    'password' => 'required|confirmed'
    ]);

    if ($validator->fails()) {
    return response()->json([
    'errors' => $validator->errors()
    ], 422);
    }

    $requestData['password'] = Hash::make($requestData['password']);

    $user = User::create($requestData);

    return response([ 'status' => true, 'message' => 'User successfully register.' ], 200);
    }

public function login(Request $request){
        $requestData = $request->all();
        $validator = Validator::make($requestData,[
        'email' => 'email|required',
        'password' => 'required'
        ]);

        if ($validator->fails()) {
        return response()->json([
        'errors' => $validator->errors()
        ], 422);
        }

        if(! auth()->attempt($requestData)){
        return response()->json(['error' => 'UnAuthorised Access'], 401);
        }

        $accessToken = auth()->user()->createToken('authToken')->accessToken;
        $user= User::select('users.*','roles.role_name')->join('roles', 'roles.role_id', '=', 'users.role_id')->find(auth()->user()->id);
        return response(['user' =>$user , 'access_token' => $accessToken], 200);
        }

public function me(Request $request){
        $user = $request->user();

        return response()->json(['user' => $user], 200);
    }

public function logout (Request $request){
        $token = $request->user()->token();
        $token->revoke();
        $response = ['message' => 'You have been successfully logged out!'];
        return response($response, 200);
    }
public function users(){

    $user= User::select('users.*','roles.role_name')->join('roles', 'roles.role_id', '=', 'users.role_id')->orderBy('users.id')->get();
    $roles= Role::select('role_id','role_name')->get();
   
    return response()->json(['message'=>'User Return Successfully' ,'user' => $user,'roles' => $roles], 200);
    }


public function destroy($id){
        return User::destroy(json_decode($id)); 
        }
        
public function update(Request $request,$id){    
        $requestData = $request->all();
        $validator = Validator::make($requestData,[
        'name' => 'required|min:3',

        ]);

        if ($validator->fails()) {
        return response()->json([
        'errors' => $validator->errors()
        ], 422);
        }

        User::where('id',$id)->update($request->all());
        return response()->json(['message'=>'User Update Successfully'], 200);
        }
        
public function get_user($id){


    $user= User::where('id',$id)->get()->first();
    $roles= Role::select('role_id','role_name')->get();
    return response()->json(['message'=>'User Return Successfully' ,'user' => $user ,'roles' => $roles], 200);
    } 
        
public function addUser(Request $request){
    $requestData = $request->all();
    $validator = Validator::make($requestData,[
    'name' => 'required|max:55',
    'email' => 'email|required|unique:users',
    'role_id' => 'required',
    'password' => 'required|confirmed'
    ]);

    if ($validator->fails()) {
    return response()->json([
    'errors' => $validator->errors()
    ], 422);
    }

    $requestData['password'] = Hash::make($requestData['password']);

    $user = User::create($requestData);

    return response([ 'status' => true, 'message' => 'User successfully register.' ], 200);
    }
}