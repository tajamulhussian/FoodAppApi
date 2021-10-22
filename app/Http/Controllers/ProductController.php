<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\BaseController as BaseController;
use App\Models\Product;
use App\Models\Variations;
use App\Models\MenuItems;
use Validator;

class ProductController extends BaseController {

    /**

     * Display a listing of the resource.

     *

     * @return \Illuminate\Http\Response

     */
    public function index() {

        $product = Product::with(
                        array(
                            'variation',
                            'getImage',
                            'getCat',
                            'getMenu'
                        )
                )
                ->orderByDesc('id')
                ->get();



        if (is_null($product)) {

            return $this->sendError('Product not found.');
        }





        return $this->sendResponse($product, 'Menu retrieved successfully.');
    }
    
      public function getpromo() {

         $product = Product::join('files','files.id','products.image')
        ->select('products.id','products.name','files.path','products.detail','products.price','promo','promo_desc')
        ->where('promo', '!=', null)
        ->get();
        if (is_null($product)) {

            return $this->sendError('Product not found.');
        }

        return $this->sendResponse($product, 'Product Promo retrieved successfully.');
    }
    

    /**

     * Store a newly created resource in storage.

     *

     * @param  \Illuminate\Http\Request  $request

     * @return \Illuminate\Http\Response

     */
    private function add_variation($param, $id) {


        foreach ($param as $key => $value) {

            $inpro['product_id'] = $id;

            $inpro['stock'] = $value['stock'];
            $inpro['price'] = $value['price'];
            $inpro['name'] = $value['name'];

            Variations::create($inpro);
        }
    }

    public function store(Request $request) {
        $input = $request->all();
        $validator = Validator::make($input, [
                    'name' => 'required',
                    'detail' => 'required',
                    'cat_id' => 'required',
                    'price' => 'required',
                    'stock' => 'required',
        ]);


        if ($validator->fails()) {

            return $this->sendError('Validation Error.', $validator->errors());
        }


        $product = Product::create($input);

        if (isset($input['menu_id'])) {
            $ietm_in['pro_menu_id'] = $input['menu_id'];
            $ietm_in['product_id'] = $product->id;
            MenuItems::create($ietm_in);
        }



        if (isset($input['vari']) && isset($product->id)) {
            $this->add_variation($input['vari'], $product->id);
        }



        $products = Product::with(
                        array(
                            'variation',
                            'getImage',
                            'getCat',
                            'getMenu'
                        )
                )
                ->orderByDesc('id')
                ->get();



        return $this->sendResponse($products, 'Product created successfully.');
    }

    /**

     * Display the specified resource.

     *

     * @param  int  $id

     * @return \Illuminate\Http\Response

     */
    public function show($id) {

        //$product = Product::find($id);
        $product = Product::with(
                        array(
                            'variation',
                            'getImage'
                        )
                )
                ->where('id', $id)
                ->get();



        if (is_null($product)) {

            return $this->sendError('Product not found.');
        }





        return $this->sendResponse($product, 'Product retrieved successfully.');
    }

    /**

     * Update the specified resource in storage.

     *

     * @param  \Illuminate\Http\Request  $request

     * @param  int  $id

     * @return \Illuminate\Http\Response

     */
    private function update_variation($param, $id) {



        foreach ($param as $key => $value) {

            $inpro['product_id'] = $id;

            $inpro['stock'] = $value['stock'];
            $inpro['price'] = $value['price'];
            $inpro['name'] = $value['name'];

            Variations::create($inpro);
        }



//          foreach ($param as $key => $value) {
//
//            $vari = Variations::find($value['id']);
//            $inpro['product_id'] = $id;
//
//            $inpro['stock'] = $value['stock'];
//            $inpro['price'] = $value['price'];
//            $inpro['name'] = $value['name'];
//            if ($vari) {
//                $vari->product_id = $id;
//                $vari->stock = $value['stock'];
//                $vari->price = $value['price'];
//                $vari->name = $value['name'];
//                $vari->save();
//            } else {
//                Variations::create($inpro);
//            }
//        }
    }

    public function update(Request $request, $id) {
        $input = $request->all();
        $product = Product::find($id);

        isset($input['name']) && $product->name = $input['name'];
        isset($input['detail']) && $product->detail = $input['detail'];
        isset($input['cat_id']) && $product->cat_id = $input['cat_id'];
        isset($input['menu_id']) && $product->menu_id = $input['menu_id'];
        isset($input['price']) && $product->price = $input['price'];
        isset($input['stock']) && $product->stock = $input['stock'];
        isset($input['image']) && $product->image = $input['image'];
        $product->save();
        $product->variation()->delete();
        if (isset($input['vari']) && isset($product->id)) {

            $this->update_variation($input['vari'], $product->id);
        }

        $menu = [];

        if (isset($input['menu_id'])) {
            $ietm_in['pro_menu_id'] = $input['menu_id'];
            $ietm_in['product_id'] = $product->id;

            $menu = MenuItems::where('product_id', '=', $product->id)->get();

            if (isset($menu[0]->id)) {
                $menu_items = MenuItems::find($menu[0]->id);
                $menu_items->product_id = $product->id;

                $menu_items->save();
            } else {
                MenuItems::create($ietm_in);
            }
        }


        $products = Product::with(
                        array(
                            'variation',
                            'getImage',
                            'getCat',
                            'getMenu'
                        )
                )
                ->orderByDesc('id')
                ->get();



        return $this->sendResponse($products, 'Product updated successfully.');



        // return $this->sendResponse($input, 'Product updated successfully.');
    }

    /**

     * Remove the specified resource from storage.

     *

     * @param  int  $id

     * @return \Illuminate\Http\Response

     */
    public function destroy($id) {


        $product = Product::find($id);
        if ($product) {

            //$product->variation()->getImage()->delete();
            $product->cat_id = null;
            $product->menu_id = null;
            $product->save();
            MenuItems::where('product_id', '=', $id)->update(['product_id' => null]);

            $product->variation()->delete();
            $product->delete();
        }
        $products = Product::with(
                        array(
                            'variation',
                            'getImage',
                            'getCat',
                            'getMenu'
                        )
                )
                ->orderByDesc('id')
                ->get();

        return $this->sendResponse($products, 'Product deleted successfully.');
    }

}
