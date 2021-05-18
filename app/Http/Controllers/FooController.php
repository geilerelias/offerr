<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Don't forget the Intertia Package ;)
use Inertia\Inertia;

class FooController extends Controller
{
    public function index()
    {
        return Inertia::render('MyCompontents/Hello', [
            'bar' => "Hello World",
        ]);
    }
}




