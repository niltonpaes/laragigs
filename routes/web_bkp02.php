<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Listing;

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

// all listings
Route::get('/', function () {
    return view('listings', [
        'listings' => Listing::all()
    ]);
});

// single listings
Route::get('/listings/{listing}', function(Listing $listing) {

    // v1.0
    // return view('listing', [
    //     'listing' => Listing::find($id)
    // ]);


    // v2.0
    // $listing = Listing::find($id);
    // if($listing) {
    //     return view('listing', [
    //         'listing' => $listing
    //     ]);
    // } else {
    //     abort('404');
    // }


     // v3.0 - recommended
    return view('listing', [
        'listing' => $listing
    ]);
});
