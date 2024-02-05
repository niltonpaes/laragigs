<?php

use App\Models\Listing;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ListingController;

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

// Common Resource Routes:
// index - show all listings
// show - show single lisnting
// create - show form to create new listing
// store - store new listing
// edit - show form to edit listing
// update - update listing
// destroy - delete listing



// ************************************************************
// LISTINGS
// ************************************************************

// all listings
Route::get('/', [ListingController::class, 'index']);

// show create form
// Route::get('/listings/create', [ListingController::class, 'create']);
// now only when logged in
Route::get('/listings/create', [ListingController::class, 'create'])->middleware('auth');

// store listing data
// Route::post('/listings', [ListingController::class, 'store']);
// now only when logged in
Route::post('/listings', [ListingController::class, 'store'])->middleware('auth');

// show edit form
// Route::get('/listings/{listing}/edit', [ListingController::class, 'edit']);
// now only when logged in
Route::get('/listings/{listing}/edit', [ListingController::class, 'edit'])->middleware('auth');

// update listing
// Route::put('/listings/{listing}', [ListingController::class, 'update']);
// now only when logged in
Route::put('/listings/{listing}', [ListingController::class, 'update'])->middleware('auth');

// delete listing
// Route::delete('/listings/{listing}', [ListingController::class, 'destroy']);
// now only when logged in
Route::delete('/listings/{listing}', [ListingController::class, 'destroy'])->middleware('auth');

// manage listings
Route::get('/listings/manage', [ListingController::class, 'manage'])->middleware('auth');

// single listing
// NOTE: needs to be last one otherwise it will conflict with the other get routes like Route::get('/listings/create
Route::get('/listings/{listing}', [ListingController::class, 'show']);



// ************************************************************
// USERS
// ************************************************************

// show register/create form
Route::get('/register', [UserController::class, 'create'])->middleware('guest');

// create new user
Route::post('/users', [UserController::class, 'store']);

// log User out
// Route::post('/logout', [UserController::class, 'logout']);
// now only when logged in
Route::post('/logout', [UserController::class, 'logout'])->middleware('auth');

// show login form
Route::get('/login', [UserController::class, 'login'])->name('login')->middleware('guest');

// log in user
Route::post('/users/authenticate', [UserController::class, 'authenticate']);

