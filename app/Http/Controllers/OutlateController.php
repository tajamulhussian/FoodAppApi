<?php

namespace App\Http\Controllers;

use App\Models\Outlate;
use Illuminate\Http\Request;
use App\Http\Controllers\BaseController as BaseController;
use Validator;
use App\Models\Order;

class OutlateController extends BaseController {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
         print_r('helll00000000000000000');
        $outlate = Outlate::all();

        return $this->sendResponse($outlate, 'Outlates retrieved successfully.');
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

        $input = $request->all();

        $validator = Validator::make($input, [
                    'name' => 'required',
                    'phone' => 'required',
                    'address' => 'required',
                    'location' => 'required',
                    'zip' => 'required',
                    'status' => 'required',
        ]);
        if ($validator->fails()) {

            return $this->sendError('Validation Error.', $validator->errors());
        }
        $outlate = Outlate::create($input);
        return $this->sendResponse($outlate, 'Outlate created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Outlate  $outlate
     * @return \Illuminate\Http\Response
     */
    public function show($id) {
        $outlate = Outlate::find($id);
        if (is_null($outlate)) {
            return $this->sendError('Outlate not found.');
        }
        return $this->sendResponse($outlate, 'Outlate retrieved successfully.');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Outlate  $outlate
     * @return \Illuminate\Http\Response
     */
    public function edit(Outlate $outlate) {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Outlate  $outlate
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id) {
        //

        $input = $request->all();


//
//        $validator = Validator::make($input, [
//                    'name' => 'required',
//                    'phone' => 'required',
//                    'address' => 'required',
//                    'location' => 'required',
//                    'zip' => 'required',
//                    'hours' => 'required',
//                    'status' => 'required',
//        ]);
//        if ($validator->fails()) {
//
//            return $this->sendError('Validation Error.', $validator->errors());
//        }

        $outlate = Outlate::find($id);

        isset($input['name']) && $outlate->name = $input['name'];
        isset($input['phone']) && $outlate->phone = $input['phone'];
        isset($input['start']) && $outlate->start = $input['start'];
        isset($input['end']) && $outlate->end = $input['end'];
        isset($input['address']) && $outlate->address = $input['address'];
        isset($input['location']) && $outlate->location = $input['location'];
        isset($input['zip']) && $outlate->zip = $input['zip'];
        isset($input['status']) && $outlate->status = $input['status'];
        isset($input['banner']) && $outlate->banner = $input['banner'];
        isset($input['description']) && $outlate->description = $input['description'];


        $outlate->save();



        return $this->sendResponse($input, 'Product updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Outlate  $outlate
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        //


        $outlate = Outlate::find($id);

        Order::where('outlate', '=', $id)->update(['outlate' => null]);
        $outlate->delete();

        $outlates = Outlate::all();

        return $this->sendResponse($outlates, 'Outlate deleted successfully.');
    }

}
