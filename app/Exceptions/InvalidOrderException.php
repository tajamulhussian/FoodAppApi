<?php

namespace App\Exceptions;

use Exception;

class InvalidOrderException extends Exception {

    /**
     * Report the exception.
     *
     * @return bool|null
     */
    public function report() {
        //
    }
//    public function context()
//    {
//        return ['order_id' => $this->orderId];
//    }

    /**
     * Render the exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function render($request) {
        return response()->json('sa', 200);
    }

}
