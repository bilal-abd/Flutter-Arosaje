<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PlanteController;
use App\Http\Controllers\ConseilController;
use App\Http\Middleware\VerifyToken;
use Illuminate\Routing\Route as RoutingRoute;

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

Route::post('/register', [UserController::class, 'register']);
Route::post('/login', [UserController::class, 'login']);
// Route::middleware('auth:sanctum')->get('/user', [UserController::class, 'user']); 
Route::middleware('auth:sanctum')->post('/logout', [UserController::class, 'logout'])->middleware('jwt.verify');;




Route::get('/plante', [PlanteController::class, 'index'])->middleware('jwt.verify');




Route::post('/plante', [PlanteController::class, 'store'])->middleware('jwt.verify');
Route::get('/plante/{id}', [PlanteController::class, 'show'])->middleware('jwt.verify');
Route::put('/plante/{id}', [PlanteController::class, 'update'])->middleware('jwt.verify');
Route::delete('/plante/{id}', [PlanteController::class, 'destroy'])->middleware('jwt.verify');

Route::get('/conseil', [ConseilController::class, 'index'])->middleware('jwt.verify');
Route::post('/conseil/{id}', [ConseilController::class, 'store'])->middleware('jwt.verify');
Route::get('/conseil/{id}', [ConseilController::class, 'show'])->middleware('jwt.verify');
Route::put('/conseil/{id}', [ConseilController::class, 'update'])->middleware('jwt.verify');
Route::delete('/conseil/{id}', [ConseilController::class, 'destroy'])->middleware('jwt.verify');

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

