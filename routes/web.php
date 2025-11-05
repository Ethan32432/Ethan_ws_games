<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// route for viewing admin users
Route::get('/admin', function () {
    return view('admin.index');
});

// platform users
Route::get('/admin/users', function () {
    return response('<h1>Platform Users</h1>');
});

// user profile page
Route::get('/admin/users/{username}', function ($username) {
    return response("<h1>$username</h1>");
});

// all games
Route::get('/admin/games', function () {
    return response('<h1>Games</h1>');
});

// individual game page
Route::get('/admin/games/{slug}', function ($slug) {
    return response("<h1>$slug</h1>");
});

// block user
Route::put('/admin/games/{username}/block', function ($username) {
    return response("<h1>Blocking $username...</h1>");
});

// delete game
Route::delete('/admin/games/{slug}', function ($slug) {
    return response("<h1>Deleting game: $slug</h1>");
});
