<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\BaseController as BaseController;
use App\Models\User;
use App\Models\Card;
use Illuminate\Support\Facades\Auth;
use Validator;
use App\Http\Resources\Register as RegisterResource;
use App\Rules\PhoneNumber;

class RegisterController extends BaseController {

    public function index() {

        $users = User::with('card')->get();


        return $this->sendResponse($users, 'An entry for user record is made.');
    }

    public function register(Request $request) {

        $validator = Validator::make($request->all(), [
                    'fname' => 'required',
                    'lname' => 'required',
                    'gender' => 'required',
                    'phone' => ['required','min:11', new PhoneNumber],
                    'email' => 'required|email|regex:/(.+)@(.+)\.(.+)/i|unique:users',
                    'password' => 'required',
                    'cpassword' => 'required|same:password',
        ]);



        if ($validator->fails()) {

            return $this->sendError('Validation Error.', $validator->errors());
        }



        $input = $request->all();

        $input['password'] = bcrypt($input['password']);
        $input['gender'] = $input['gender'];
        $input['phone'] = $input['phone'];

        $user = User::create($input);

        $success['token'] = $user->createToken('MyApp')->accessToken;

        $success['name'] = $user->name;



        return $this->sendResponse($success, 'An entry for user record is made.');
    }

    /**

     * Login api

     *

     * @return \Illuminate\Http\Response

     */
    public function login(Request $request) {

        if (Auth::attempt(['phone' => $request->phone, 'password' => $request->password])) {
            $user = Auth::user();
            $success['token'] = $user->createToken('MyApp')->accessToken;
            $success['user'] = $user;

            return $this->sendResponse($success, 'User login successfully.');
        } else {

            return $this->sendError('Unauthorised.', ['error' => 'Unauthorised']);
        }
    }

    public function update(Request $request) {
        $input = $request->all();
        $users = User::findOrFail(Auth::id());
        $validator = Validator::make($input, [
                    'phone' => 'regex:/(01)[0-9]{9}/',
                    'email' => 'email|unique:users',
                    'e_date' => 'date',
        ]);
        // $card = [];
        if ($validator->fails()) {

            return $this->sendError('Validation Error.', $validator->errors());
        }

        if (isset($input['fname'])) {
            $users->fname = $input['fname'];
        }
        if (isset($input['lname'])) {
            $users->lname = $input['lname'];
        }

        if (isset($input['email'])) {
            $users->email = $input['email'];
        }
        if (isset($input['gender'])) {
            $users->gender = $input['gender'];
        }
        if (isset($input['d_address'])) {
            $users->address = $input['d_address'];
        }

        // Validate the value...
        $card = Card::find($users->card_id);

        if ($card) {
            if (isset($input['card_name'])) {
                $card->card_name = $input['card_name'];
            }
            if (isset($input['card_number'])) {
                $card->card_number = $input['card_number'];
            }
            if (isset($input['ccv'])) {
                $card->ccv = $input['ccv'];
            }
            if (isset($input['e_date'])) {
                $card->e_date = $input['e_date'];
            }

            $card->save();
            $users->card_id = $card->id;
        } else {
            $card = Card::create([
                        'card_name' => isset($input['card_name']) ? $input['card_name'] : null,
                        'card_number' => isset($input['card_name']) ? $input['card_name'] : null,
                        'ccv' => isset($input['ccv']) ? $input['ccv'] : null,
                        'e_date' => isset($input['e_date']) ? $input['e_date'] : null,
            ]);

            $users->card_id = $card->id;
        }


        $users->save();

        return $this->sendResponse($users, 'An entry for user record is made.');


        // return $this->sendResponse($input, 'Product updated successfully.');
    }

    public function show($id) {
        
    }

    public function destroy(User $user) {
        
    }

}
