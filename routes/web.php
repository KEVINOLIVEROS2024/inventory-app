<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserSearchController;
use App\Http\Middleware\CheckRoleMiddleware;

Route::get('/', function () {
    return view('welcome');
});
Route::get('/users/search', [UserSearchController::class, 'search']);
Route::middleware(['auth', 'check.role:super_admin'])->group(function () {
    Route::get('/users/search', [UserSearchController::class, 'search']);
    // Otras rutas protegidas
});