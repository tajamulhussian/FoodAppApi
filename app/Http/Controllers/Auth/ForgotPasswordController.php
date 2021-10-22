<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\BaseController as BaseController;
use App\Http\Controllers\Controller;
use App\ApiCode;
use App\Http\Requests\ResetPasswordRequest;
use Illuminate\Support\Facades\Password;

use Illuminate\Http\Request;
use App\Models\User;


class ForgotPasswordController extends BaseController
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset BaseController
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset emails and
    | includes a trait which assists in sending these notifications from
    | your application to your users. Feel free to explore this trait.
    |
    */



public function forgot() {


        $credentials = request()->validate(['email' => 'required|email']);

        $sendResetLink = Password::sendResetLink($credentials);

        

        return $this->respondWithMessage('Reset password link sent on your email id.');
    }


    public function reset(ResetPasswordRequest $request) {
        // echo "HI";exit;
        $reset_password_status = Password::reset($request->validated(), function ($user, $password) {
            $user->password = $password;
            $user->save();
        });

        if ($reset_password_status == Password::INVALID_TOKEN) {
            return $this->respondBadRequest(ApiCode::INVALID_RESET_PASSWORD_TOKEN);
        }

        return $this->respondWithMessage("Password has been successfully changed");
    }
   

    
}
