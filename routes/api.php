<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::middleware(['auth:api', 'api'])->group(function () {
    Route::apiResource('/applications', \App\Http\Controllers\ApplicationController::class)->only(['index', 'store', 'update']);
    Route::get('/reports', [\App\Http\Controllers\ReportController::class, 'index']);
    Route::patch('/charities/{charity}/approve', [\App\Http\Controllers\CharityController::class, 'approve']);
});
