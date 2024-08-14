<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserSearchController;

Route::get('/', function () {
    return view('welcome');
});
Route::get('/users/search', [UserSearchController::class, 'search']);
