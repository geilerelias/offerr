<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\BusinessController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/welcome', function () {
    return view('welcome');
});

Route::get('/', function () {
    return Inertia\Inertia::render('Home');
})->name('home');

Route::get('/product', function () {
    return Inertia\Inertia::render('Product');
})->name('product');

Route::get('/features', function () {
    return Inertia\Inertia::render('Features');
})->name('features');

Route::get('/marketplace', function () {
    return Inertia\Inertia::render('Marketplace');
})->name('marketplace');

Route::get('/company', function () {
    return Inertia\Inertia::render('Company');
})->name('company');

Route::get('/example', function () {
    return view('example');
});

Route::get('foo/hello',
    [\App\Http\Controllers\FooController::class, 'index']
)->name('foo.index');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return Inertia\Inertia::render('Dashboard');
})->name('dashboard');

Route::resource('posts', PostController::class);
Route::resource('business', BusinessController::class);
