<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Throwable;

class Handler extends ExceptionHandler {

    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
            //
    ];

//    public function report(Exception $exception) {
//        parent::report($exception);
//    }

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

//    public function render($request)
//    {
//        return response(...);
//    }

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register() {
        $this->reportable(function (Throwable $e) {
            //
//            logger($e);
//            if ($e->getStatusCode() == 500) {
//                return response()->json('some error', 200);
//            } else {
//                return response()->json('some error', 200);
//            }
        });
    }

}
