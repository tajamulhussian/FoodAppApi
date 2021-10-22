<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\BaseController as BaseController;
use App\Models\Cart;
use App\Models\CartVariations;
use App\Models\Variations;
use App\Models\Product;
use Validator;
use Illuminate\Support\Facades\Auth;
use App\Models\Options;

class CartController extends BaseController {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request) {
      
        $user_id = 0;
        if (Auth::check()) {
            $user = Auth::id();
            $user_id = $user;
            $cart = Cart::with(
                            array(
                                'catVariation',
                                'product.getImage',
                            )
                    )->where([
                        ['user_id', '=', $user_id],
                        ['order_id', '=', null],
                    ])
                    ->orderByDesc('id')
                    ->get();
            if (is_null($cart)) {
                return $this->sendError('Order not found.');
            }
            $count = count($cart);
            $recart['cart'] = $cart;
            $recart['count'] = $count;
            $recart['gst'] = $this->options('gst');
            $recart['d_charge'] = $this->options('d_charge');
            $recart['sub'] = $cart->sum('price');
            $recart['sum'] = $this->options('gst') + $this->options('d_charge') + $cart->sum('price');
            return $this->sendResponse($recart, 'Cart retrieved successfully !');
         } else {
//            $cart = $request->session()->get('carts');
//
//            if ($cart != null) {
//                $count = count($cart['product']);
//                $return = array();
//                foreach ($cart['product'] as $id => $qty) {
//                    $product = Product::select('id', 'name', 'price')
//                            ->where('id', $id)
//                            ->get();
//                    $product['quantity'] = $qty;
//                    $return[] = $product;
//                }
//
//                $return['count'] = $count;
//                $return['cart'] = $cart;
//                $recart['sum'] = 50;
//                return $this->sendResponse($return, 'Cart retrieved successfully.');
//            }
//            return $this->sendResponse($cart, 'Cart empty !');


             $this->cartLocal($request->all());
         }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response

     * 
     * 
     */
    private function cart_variations($cart_id, $vari_arr) {
        foreach ($vari_arr as $id) {

            $find = Variations::find($id);

            if ($find != null) {
                $input['cart_id'] = $cart_id;
                $input['variations_id'] = $id;
                $input['name'] = $find->name;
                $input['price'] = $find->price;

                $cart = CartVariations::create($input);
            }
        }
    }

    public function store(Request $request) {
        return $this->sendResponse($request->session()->all(), 'successfully.');
        $input = $request->all();
        $carts = [];


        if (Auth::check()) {


            if (isset($input[0])) {

                foreach ($input as $key => $value) {
                    $user = Auth::id();
                    $inpu['user_id'] = $user;
                    $inpu['price'] = (int) $value['price'];
                    $inpu['quantity'] = (int) $value['quantity'];
                    $inpu['product_id'] = (int) $value['product_id'];

                    $cart = Cart::create($inpu);
                    if (isset($value['variation_id'])) {
                        $vari_arr = explode(',', $value['variation_id']);
                        is_array($vari_arr) && $this->cart_variations($cart->id, $vari_arr);
                    }
                }


                $carts = $this->index($request);


                return $this->sendResponse($carts->original, 'Guest Add to cart successfully.');
            }



            $validator = Validator::make($input, [
                        'product_id' => 'required|exists:products,id',
                        'quantity' => 'required',
                        'price' => 'required'
            ]);
            if ($validator->fails()) {
                return $this->sendError('Validation Error.', $validator->errors());
            }
            $user = Auth::id();
            $input['user_id'] = $user;
            $input['price'] = (int) $input['price'];

            $cart = Cart::create($input);
            if (isset($input['variation_id'])) {
                $vari_arr = explode(',', $input['variation_id']);
                is_array($vari_arr) && $this->cart_variations($cart->id, $vari_arr);
            }
            $carts = $this->index($request);
            return $this->sendResponse($carts->original, ' Add to cart successfully.');

            //  return $this->sendResponse($input, ' Add to cart successfully.');
        } else {
            return $this->sendResponse($this->cartLocal($request->all()), ' Add to cart successfully.');
        }


//$request->session()->push('user.teams', 'developers 2');
    }
    
     public function storepromo(Request $request) {
         $user = Auth::id();
         $inpu['user_id'] = $user;
         $input['product_id'] = $request->product_id;
        //  $input['product_name'] = $request->product_name;
         $input['price'] = $request->price;
         $inpu['quantity'] = $request->quantity;
         $cart = Cart::create($input);
         return $this->sendResponse($cart, ' Add to cart successfully.');
     }

    public function cartLocal($data) {
        
       

        $carts = array();
        $count = 0;
        $sub = 0;



        foreach ($data as $key => $value) {
            // print_r($value);
        //  print_r($data[0]['product_id']);
              $product = Product::find($value['product_id']);
            //   print_r($product);
            //  $product = Product::find($value)->toArray();
            //   $price = array_column($product, 'price');
             $new_price = 0;
            // $new_price = (int) $data[0]['quantity'];
            
            if (floatval($value['vari_price']) > 0) {
                $new_price = (int) $value['quantity'] * (floatval($value['price']) + floatval($value['vari_price']));
            } else {
                $new_price = (int) $value['quantity'] * floatval($value['price']);
            }


          
            $carts[] = array(
                // 'id' => $key,
                'product_id' => $value['product_id'],
                'quantity' => $value['quantity'],
                 'variation_id' => $value['variation_id'],
                'price' => $new_price,
                'vari_price' => floatval($value['vari_price']),
                'product' => array($product)
            );

            $count = $count + 1;
            $sub = $sub + $new_price;
        }

        $d_charge = $this->options('d_charge');
        $gst = $this->options('gst');


        $return['cart'] = $carts;
        $return['count'] = $count;
        $return['d_charge'] = $d_charge;
        $return['gst'] = $gst;
        $return['sub'] = $sub;
        $return['sum'] = $sub + $d_charge + $gst;
        return $return;
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
    public function sumVariation($variation) {
        $sum_price = 0;
        if (count($variation) > 0) {
            foreach ($variation as $value) {
                $sum_price += $value['price'];
            }
        }

        return $sum_price;
    }

    public function update(Request $request, Cart $cart) {
        if (Auth::check()) {
            $input = $request->all();
            $validator = Validator::make($input, [
                        'product_id' => 'required',
                        'quantity' => 'required',
                        'price' => 'required',
            ]);

            if ($validator->fails()) {

                return $this->sendError('Validation Error.', $validator->errors());
            }
            $vari_price = 0;
            if (isset($input['cat_variation'])) {

                $vari_price = floatval($this->sumVariation($input['cat_variation']));
            }

            $price = Product::find($input['product_id'])->price;

            $cart->quantity = (int) $input['quantity'];
            $cart->price = (int) $input['quantity'] * ( floatval($price) + $vari_price);

            $cart->save();


            return $this->sendResponse($this->index($request), 'Cart updated successfully.');
        } else {
            return $this->sendResponse([], 'Guest cart updated successfully.');
        }
    }

    public function updateCart($id) {
        return $this->sendResponse($id, 'Guest cart updated successfully.');
    }

    private function options($key_name) {
        $options = Options::select('key_value')
                ->where('key_name', $key_name)
                ->get();

        return $options[0]->key_value;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id) {
        if (Auth::check()) {
            $carts = Cart::find($id);
            if ($carts !== null) {
                $carts->catVariation()->delete();
                $carts->delete();
            }



            $user = Auth::id();
            $user_id = $user;
            $cart = Cart::with(
                            array(
                                'catVariation',
                                'product.getImage',
                            )
                    )->where([
                        ['user_id', '=', $user_id],
                        ['order_id', '=', null],
                    ])
                    ->get();
            if (is_null($cart)) {
                return $this->sendError('Order not found.');
            }
            $count = count($cart);
            $recart['cart'] = $cart;
            $recart['count'] = $count;

            return $this->sendResponse($recart, 'Cart deleted successfully.');
        } else {
            
        }
    }

    function clear(Request $request) {
        $user = 0;
        if (Auth::check()) {
            $user = Auth::id();
            //Cart::where('user_id', $user)->delete();
            $carts = Cart::where('user_id', $user)->get();

            foreach ($carts as $value) {
                $cart = Cart::find($value->id);
                $cart->catVariation()->delete();
                $cart->delete();
            }


            return $this->sendResponse([], 'Clear Cart successfully logged in.');
        } else {
            $request->session()->forget('carts');
            return $this->sendResponse([], 'Cart deleted successfully.');
        }
    }

}
