<?php

use App\Http\Controllers\ProfileController;

use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;



	Route::get('/', function () {
    return redirect('/home');
});
   // return view('welcome');





//Route::get('/', [PostController::class, 'mainpage']);
  //   Route::get('/create-post', [ProfileController::class, 'createpost']);

//Route::get('/dashboard', function () {
//    return view('dashboard');
//})->middleware(['auth', 'verified'])->name('dashboard');

Route::get('/dashboard', [PostController::class, 'mydashboard'])->middleware(['auth', 'verified'])->name('dashboard');



Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

Route::get('/post-page', [ProfileController::class, 'postpage']);


// routes/web.php
Route::get('/addpost', [ProfileController::class, 'create'])->name('addpost');


Route::post('/poststore', [PostController::class, 'createpost'])->name('poststore');


Route::get('/active_post_unactive/{id}', [PostController::class, 'postunactive'])->name('active_post_unactive');

Route::get('/unactive_post_active/{id}', [PostController::class, 'postactive'])->name('unactive_post_active');

Route::get('/single_post/{id}', [PostController::class, 'singlepost'])->name('single_post');

Route::get('/edit_post/{id}', [PostController::class, 'editpost'])->name('edit_post');

Route::post('/update_post/{id}', [PostController::class, 'updatepost'])->name('update_post');

Route::get('/delete_post/{id}', [PostController::class, 'deletepost'])->name('delete_post');


Route::get('/filter', [PostController::class, 'filterdata'])->name('filter');

});



Route::get('/home', [PostController::class, 'homepage'])->name('home');

Route::get('/date_author_filter', [PostController::class, 'dateauthorfilter'])->name('date_author_filter');


require __DIR__.'/auth.php';
