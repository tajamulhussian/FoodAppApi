<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\File;
use Illuminate\Support\Facades\Storage;

class AdminController extends BaseController {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request) {




        if (Auth::attempt(['email' => $request->email, 'password' => $request->password, 'role' => 1])) {
            $user = Auth::user();
            $success['token'] = $user->createToken('MyApp')->accessToken;
            $success['user'] = $user;

            return $this->sendResponse($success, 'User login successfully.');
        } else {

            return $this->sendError('Unauthorised.', ['error' => 'Unauthorised']);
        }
        //
    }

    public function upload(Request $request) {
        $path = $request->file('file')->store('products');


        $file = new File;

        $file->path = $path;
        $file->type = 1;

        $file->save();

        return $this->sendResponse($file, 'FIle uploaded successfully.');
    }

    public function picReal($folder, $filename) {
        $path = storage_path('app/' . $folder . '/' . $filename);
        if (!File::exists($path)) {
            abort(404);
        }
        $file = Storage::get($folder . '/' . $filename);
        return $file;
    }

    public function index() {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        //
    }

}
