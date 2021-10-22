<?php

namespace App\Http\Controllers;

use App\ApiCode;
use App\Http\Requests\ResetPasswordRequest;
use Illuminate\Support\Facades\Password;
use App\Http\Controllers\BaseController as BaseController;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Models\User;
use Mail;
use DB;





class ForgotPasswordController extends BaseController
{
    public function forgot(Request $request) {
      // echo $request->email;
        $userId = DB::table('users')->select('id','password')->where('email','=',$request->email)->get();
        
         
         $send = '';

          if($userId->isEmpty()) {
       
            return $this->sendError('email is invalid');
        }
        
            Mail::send([  ], [], function ($message) {
            $email = request('email');
            $password = rand();
            $userId = DB::table('users')->select('id','password')->where('email','=',$email)
            ->get();
            foreach($userId as $userData) {
            $userData=User::find($userData->id);
            $userData->password = Hash::make($password);
            $userData->save();
            // echo $book_id;
            } 
      
            $message->to($email)
            ->subject('Reset Password Notification')
            ->setBody('You can login with this password :'.'   ' .$password); // assuming text/plain
            
       });
           return $this->sendResponse($send, 'Reset password sent on your email id.');

       
        

      

          
        // return $this->sendResponse(sendPasswordResetNotification($credentials),'Reset password link sent on your email id.');
    }


    public function reset(Request $request) {
     
              $password = $request->password;
              echo  $password;
              $email = $request->email;
              echo  $email;

              $userId = DB::table('users')->select('email')->where('email','=',$email)->get();
              echo  $userId;
          
              $passwords = Hash::make($password);   
         
          DB::update('update users set password = ?',[$userId]);

          
       

        

        return $this->sendResponse($reset_password_status,"Password has been successfully changed");
    }
    // public function reset(Request $request){
    //     $token = $request->token;
    //     $email = $request->email;
    //     return $this->sendResponse($token, 'Token Created Successfully.');
    // }
}
