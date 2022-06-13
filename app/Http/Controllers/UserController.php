<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Inertia\Inertia;

class UserController extends Controller
{

    public function all()
    {
        return User::all();
    }

    public function getUser($id)
    {
        return User::find($id);
    }

}
