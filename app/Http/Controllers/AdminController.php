<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class AdminController extends Controller
{
    public function loginForm() {
        return view('admin.login');
    }

    public function login(Request $request) {
        $admin = DB::table('admins')
            ->where('username', $request->username)
            ->first();

        if ($admin && Hash::check($request->password, $admin->password)) {
            Session::put('admin', $admin->username);
            DB::table('admins')->where('id', $admin->id)
              ->update(['last_login' => now()]);
            return redirect('/admin/dashboard');
        }

        return back()->withErrors(['Invalid username or password']);
    }

    public function dashboard() {
        if (!Session::has('admin')) {
            return redirect('/admin/login');
        }

        $admins = DB::table('admins')->get();
        $users = DB::table('users')->get();
        $games = DB::table('games')->get();

        return view('admin.dashboard', compact('admins', 'users', 'games'));
    }
}
