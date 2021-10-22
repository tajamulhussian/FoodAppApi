<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\RegisterController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\OutlateController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\OptionsController;
use App\Http\Controllers\ProVariations;
use App\Http\Controllers\MenuController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ForgotPasswordController;
use App\Http\Controllers\UserController;



/*
  |--------------------------------------------------------------------------
  | API Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register API routes for your application. These
  | routes are loaded by the RouteServiceProvider within a group which
  | is assigned the "api" middleware group. Enjoy building your API!
  |
 */


Route::get('/testmail', function () {
   Mail::send('welcome', [], function($message) {
    $message->to('itianzinfo@gmail.com')->subject('Testing mails'); 
});
});



//Route::post('user/login', 'Auth\RegisterController@login');
//Route::post('user/registration', 'Auth\RegisterController@create');
//Route::post('getuser', 'Auth\LoginController@getuser');
Route::post('register', [RegisterController::class, 'register']);

Route::resource('products', ProductController::class);
Route::resource('provari', ProVariations::class);
Route::resource('home', ProductController::class);

Route::resource('home', HomeController::class);
Route::get('popup', [HomeController::class, 'popup']);

Route::get('category', [HomeController::class, 'category']);
Route::post('category', [HomeController::class, 'store']);
Route::get('category/{id}', [HomeController::class, 'menu_show']);
Route::delete('category/{id}', [HomeController::class, 'destroy']);
Route::post('login', [RegisterController::class, 'login']);

Route::resource('outlets', OutlateController::class);

Route::resource('menus', MenuController::class);

Route::get('options/{key}', [OptionsController::class, 'show']);

Route::get('users', [RegisterController::class, 'index']);


Route::post('admin/login', [AdminController::class, 'login']);

Route::get('pic/{folder}/{file}', [AdminController::class, 'picReal']);



// New Api

Route::post('table_selection', [HomeController::class, 'tableSelections']);



    Route::get('email/verify/{id}', [VerificationController::class, 'verify'])->name('verification.verify');
    Route::get('email/resend', [VerificationController::class, 'resend'])->name('verification.resend');
    Route::post('password/email', [ForgotPasswordController::class, 'forgot']);

    Route::post('password/reset', [ForgotPasswordController::class, 'reset'])->name('password.reset');
    // Route::get('password/reset', [ForgotPasswordController::class, 'reset'])->name('password.reset');

    Route::get('getUser/{id}', [HomeController::class, 'getUser']);
    Route::post('updateUser', [HomeController::class, 'updateUser']);

    
    Route::post('stripes', [PaymentController::class, 'stripePost'])->name('stripe.post');
    Route::post('placeOrder', [PaymentController::class, 'placeOrder']);

    Route::get('getProductPromo', [ProductController::class, 'getpromo']);
    Route::post('storepromo', [CartController::class, 'storepromo']);
    Route::post('updateProductPromo', [ProductController::class, 'updatepromo']);


   //place order lalamove
    Route::post('placequotations', [HomeController::class, 'placequotations']);
   
   //quotationsLalamove order lalamove
    Route::post('orderPlace', [HomeController::class, 'placeOrder']);

    // Get order Details
    Route::get('orderDetails', [HomeController::class, 'orderDetails']);

   // Get driver Details
    Route::get('driversDetails', [HomeController::class, 'driversDetails']);

    Route::get('driversLocation', [HomeController::class, 'driversLocation']);

    Route::PUT('orderCancel', [HomeController::class, 'orderCancel']);
   

    // Route::post('placeOrderLalamove', [HomeController::class, 'placeOrderLalamove']);



//Route::resource('cart', CartController::class);s
//Route::resource('orders', OrderController::class);
//Route::post('login', 'RegisterController@login');
//Route::post('register', 'RegisterController@register');

if (\Request::header('Authorization')) {
    Route::middleware('auth:api')->group(function () {
        Route::post('upload', [AdminController::class, 'upload']);
        Route::post('cart', [CartController::class, 'store']);
        Route::put('register', [RegisterController::class, 'update']);
        Route::delete('cart/clear', [CartController::class, 'clear']);
        Route::resource('cart', CartController::class);
        Route::resource('orders', OrderController::class);
        Route::get('orders/reorder/{id}', [OrderController::class, 'reorder']);
        Route::resource('payment', PaymentController::class);
    }
    );
} else {
    Route::post('cart', [CartController::class, 'store']);
    Route::get('cart', [CartController::class, 'index']);
    Route::put('cart/{id}', [CartController::class, 'updateCart']);
    Route::delete('cart/clear', [CartController::class, 'clear']);
    Route::post('orders', [OrderController::class, 'store']);
    Route::get('orders', [OrderController::class, 'index']);
    Route::get('orders/{id}', [OrderController::class, 'show']);
    Route::resource('payment', PaymentController::class);
}

