<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Extensions\MongoSessionHandler;
use Illuminate\Support\Facades\Session;

class AppServiceProvider extends ServiceProvider {

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register() {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot() {
        //
        Session::extend('mongo', function ($app) {
            // Return an implementation of SessionHandlerInterface...
            return new MongoSessionHandler;
        });
    }

}
