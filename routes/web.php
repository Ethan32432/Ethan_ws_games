<?php

use Illuminate\Support\Facades\Route;
use App\Models\User;

Route::get('/', function () {
    return view('welcome');
});

// route for viewing admin users
Route::get('/admin', function () {
    return view('admin.index');
});

// platform users (Admin Users page)
Route::get('/admin/users', function () {
    $admins = User::all(); // fetch all users; later you can filter for admins if needed
    return view('admin.admin_users', compact('admins'));
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
