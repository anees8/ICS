<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\EmployeeController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('/get_router1', [AuthController::class, 'get_router']);

Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);

Route::middleware('auth:api')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::get('/users', [AuthController::class, 'users']);
    Route::post('/users', [AuthController::class, 'addUser']);
  
   
    Route::get('/me', [AuthController::class, 'me']);
  

    Route::get('/get_router', [AuthController::class, 'get_router']);

    Route::delete('/users/{id}',[AuthController::class,'destroy']);
    Route::put('/users/{id}',[AuthController::class,'update']);
    Route::get('/users/{id}',[AuthController::class,'get_user']);

    Route::post('/hasPermissionsNeeded',[AuthController::class,'hasPermissionsNeeded']);
    Route::resource('employee', EmployeeController::class);


       
});

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
