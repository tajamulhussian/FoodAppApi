<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Menus;
use App\Models\MenuItems;
use App\Models\Product;
use App\Models\Category;
use App\Http\Controllers\BaseController as BaseController;
use Validator;

class MenuController extends BaseController {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        //
        $menu = Menus::with(
                        array(
                            'getImage'
                        )
                )
                ->select('id', 'name', 'banner')
                ->get();
        if (is_null($menu)) {
            return $this->sendError('Menu not found.');
        }
        return $this->sendResponse($menu, 'Menu retrieved successfully.');
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
        ]);
        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }


        $category = Menus::create($input);
        return $this->sendResponse($category, 'Add to cart successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
//    public function show($id) {
//        $menu = Menus::with(
//                        array(
//                            'getImage',
//                            'getItems',
//                            'getItems.product.getImage',
//                            'getItems.product.variation',
//                        )
//                )
//                ->select('id', 'name', 'banner')
//                ->where('id', $id)
//                ->get();
//        
//       
//        
//        
//        if (is_null($menu)) {
//            return $this->sendError('Menu not found.');
//        }
//        return $this->sendResponse($menu, 'Menu retrieved successfully.');
//    }
//    


    public function show($id) {


        $menu = Category::with(
                        [
                            'getImage',
                            'getProducts' => function ($query) use ($id) {
                                $query->where('menu_id', '=', $id);
                            },
                            'getProducts.variation',
                            'getProducts.getImage'
                        ]
                )
                ->select('id', 'name', 'banner')
                ->get();
        return $this->sendResponse($menu, 'Menu retrieved successfully.');
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
        $category = Menus::find($input['id']);
        $category->name = $input['name'];
        $category->banner = $input['banner'];
        $category->save();
        return $this->sendResponse($category, 'Category update successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {



        MenuItems::where('pro_menu_id', '=', $id)->update(['pro_menu_id' => null]);
        Product::where('menu_id', '=', $id)->update(['menu_id' => null]);
        //

        $menus = Menus::find($id);

        $menus->delete();
        $menu = Menus::with(
                        array(
                            'getImage'
                        )
                )
                ->select('id', 'name', 'banner')
                ->get();
        return $this->sendResponse($menu, 'Menu delete successfully.');
    }

}
