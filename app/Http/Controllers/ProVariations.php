<?php

namespace App\Http\Controllers;

use App\Http\Controllers\BaseController as BaseController;
use Illuminate\Http\Request;
use App\Models\Variations;
use Validator;

class ProVariations extends BaseController {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        $product = Variations::all();

        if (is_null($product)) {

            return $this->sendError('Variations not found.');
        }


        return $this->sendResponse($product, 'Variations retrieved successfully.');
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
                    'price' => 'required',
                    'stock' => 'required',
                    'product_id' => 'required',
        ]);


        if ($validator->fails()) {

            return $this->sendError('Validation Error.', $validator->errors());
        }

        $product = Variations::create($input);

        return $this->sendResponse($product, 'Variations created successfully.');
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
        $input = $request->all();
        $product = Variations::find($id);

        isset($input['name']) && $product->name = $input['name'];
        isset($input['price']) && $product->price = $input['price'];
        isset($input['stock']) && $product->stock = $input['stock'];
        isset($input['product_id']) && $product->stock = $input['product_id'];

        $product->save();


        return $this->sendResponse($product, 'Variations updated successfully.');
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
