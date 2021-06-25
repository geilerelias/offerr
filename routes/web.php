<?php

use App\Http\Controllers\BusinessController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\SubcategoryController;

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

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
Route::get('/clear-cache', function () {
    try {
        $exitCode = Artisan::call('cache:clear');
        $exitCode = Artisan::call('config:cache');
        return 'DONE'; //Return anything
    } catch (Throwable $th) {
        //throw $th;
    }
});

Route::get('/migrate', function () {
    try {
        $exitCode = Artisan::call('migrate');
        return 'DONE'; //Return anything
    } catch (Throwable $th) {
        throw $th;
    }
});

Route::get('/storage/{folder}/{filename}', function ($folder, $filename) {

    try {
        $path = storage_path() . '/app/' . $folder . '/' . $filename;

        //si no se encuentra lanzamos un error 404.
        if (!Storage::exists($folder . '/' . $filename)) {
            abort(404);
        }

        $file = File::get($path);
        $type = File::mimeType($path);

        $response = Response::make($file, 200);
        $response->header("Content-Type", $type);
        return $response;
    } catch (\Throwable $th) {
        return $th->getMessage();
    }
});

Route::get('/back', function () {
    //return url()->previous(false);
    return url(url()->previous())->previous();
})->name('back');

Route::get('/welcome', function () {
    return view('welcome');
});

Route::get('/', function () {
    return Inertia\Inertia::render('Home');
})->name('home');


Route::get('/features', function () {
    return Inertia\Inertia::render('Features');
})->name('features');

Route::get('/marketplace', function () {
    return Inertia\Inertia::render('Marketplace');
})->name('marketplace');

Route::get('/orders', function () {
    return Inertia\Inertia::render('Orders');
})->name('orders');

Route::get('/example', function () {
    return Inertia\Inertia::render('Example');
});


Route::get('foo/hello',
    [\App\Http\Controllers\FooController::class, 'index']
)->name('foo.index');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return Inertia\Inertia::render('Dashboard');
})->name('dashboard');


Route::resource('posts', PostController::class);

Route::get('/category/list', [CategoryController::class, "list"])->name('category.list');
Route::get('/category/{id}/business', [CategoryController::class, "allBusinessForCategory"])->name('category.list');
Route::get('/category/show/{id}', [CategoryController::class, "look"]);
Route::get('/category/all', [CategoryController::class, "all"]);
Route::middleware(['auth:sanctum', 'verified'])->resource('category', CategoryController::class);

Route::get('/business/all', [BusinessController::class, "all"]);
Route::get('/business/user/all', [BusinessController::class, "allForUser"]);
Route::get('/business/{id}/subcategory', [BusinessController::class, "allSubcategoryForBusiness"]);
Route::middleware(['auth:sanctum', 'verified'])->resource('business', BusinessController::class);

Route::get('/subcategory/list', [SubcategoryController::class, "list"])->name('subcategory.list');
Route::get('/subcategory/show/{id}', [SubcategoryController::class, "look"]);
Route::get('/subcategory/all', [SubcategoryController::class, "all"]);
Route::get('/subcategory/{id}/product', [SubcategoryController::class, "allProductForSubcategory"]);
Route::get('/subcategory/user/all', [SubcategoryController::class, "allForUser"]);
Route::middleware(['auth:sanctum', 'verified'])->resource('subcategory', SubcategoryController::class);

Route::get('/product/all', [ProductController::class, "all"]);
Route::get('/product/watch/{id}', [ProductController::class, "watch"])->name('product.watch');
Route::middleware(['auth:sanctum', 'verified'])->resource('product', ProductController::class);

Route::middleware(['auth:sanctum', 'verified'])->resource('cart', CartController::class);


