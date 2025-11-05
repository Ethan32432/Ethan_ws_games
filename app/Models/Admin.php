<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Admin extends Model
{
    use HasFactory;

    // Optional: specify fillable fields
    protected $fillable = [
        'username',
        'created_at',
        'last_login',
    ];

    // Optional: disable timestamps if you don’t use them
    // public $timestamps = false;
}
