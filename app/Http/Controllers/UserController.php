<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Controllers\BaseController as BaseController;

class UserController extends Controller
{
    public function __construct() {
        // $this->middleware('auth:api');
    }

    public function updateProfile() {
        $attributes = request()->validate(['name' => 'nullable|string']);

        auth()->user()->update($attributes);

        return $this->respondWithMessage("User successfully updated");
    }

      public function getUser(Request $request ) {
        $data = User::Find($request->id);

        return $this->sendResponse($data, 'Get User Successfully');
    }

     public function updateUser(Request $request ) {
        $data = User::Find($request->id);

        return $this->sendResponse($data, 'Get User Successfully');
    }
}
