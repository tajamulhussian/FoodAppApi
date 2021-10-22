<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Cart;
use App\Models\GuestUser;
use Illuminate\Http\Request;
use App\Http\Controllers\BaseController as BaseController;
use Validator;
use App\Http\Resources\Order as OrderResource;
use Illuminate\Support\Facades\Auth;
use App\Models\Options;
use App\Models\Card;
use App\Models\Product;
use App\Models\Variations;
use App\Models\CartVariations;
use App\Rules\PhoneNumber;
use Illuminate\Support\Facades\DB;

class OrderController extends BaseController {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
      
        if (Auth::check()) {
           
            $user = Auth::user();
            $orders = [];

            if ($user->role === 1) {
                $orders = Order::with(
                                array(
                                    'user',
                                    'guest',
                                    'cart.product',
                                    'cart.catVariation.variations',
                                    'orderType',
                                    'outlate.banner.type'
                                )
                        )
                        ->orderByDesc('id')
                        ->get();
                        
                      
            } else {
                $user_id = $user->id;
                $orders = Order::with(
                                array(
                                    'user',
                                    'cart.product',
                                    'cart.catVariation.variations',
                                    'orderType',
                                    'outlate.banner.type'
                                )
                        )
                        ->where('user_id', $user_id)
                        ->orderByDesc('id')
                        ->get();
                      
            }
                   
            return $this->sendResponse($orders, 'Order retrieved successfully.');
        } else {
              
            $orders = Order::with(
                            array(
                                'guest',
                                'cart.product',
                                'cart.catVariation.variations',
                                'orderType',
                                'outlate.banner.type'
                            )
                    )
                    ->orderByDesc('id')
                    ->get();
            
            return $this->sendResponse($orders, 'Order retrieved successfully.');
        }
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
    private function options($key_name) {
        $options = Options::select('key_value')
                ->where('key_name', $key_name)
                ->get();

        return $options[0]->key_value;
    }

    private function cart_variations($cart_id, $vari_arr) {
        foreach ($vari_arr as $id) {

            $id = (int) $id;

            $find = Variations::find($id);

            if ($find != null) {
                $input['cart_id'] = $cart_id;
                $input['variations_id'] = $id;
                $input['name'] = $find->name;
                $input['price'] = $find->price;
                CartVariations::create($input);
            }
        }
    }

    public function store(Request $request) {

        $order = [];
        $input = $request->all();
        // print_r($input);
        $card = [];
        if (Auth::check()) {
        
            $validator = Validator::make($input, [
                        'cart_id' => 'required',
                        'order_type' => 'required'
            ]);
            if ($validator->fails()) {

                return $this->sendError('Validation Error.', $validator->errors());
            }
            if ($input['order_type'] == 1 && !isset($input['d_address'])) {
                return $this->sendError('Delivary address required.', $validator->errors());
            }

            $order_in['user_id'] = Auth::id();
            if (isset($input['date'])) {
                $order_in['date'] = date('Y-m-d', strtotime($input['date']));
            } else {
                $order_in['date'] = date('Y-m-d', strtotime('+' . $this->options('d_time') . ' day'));
            }
            if (isset($input['time'])) {
                $order_in['time'] = $input['time'];
            }

            $order_in['gst_charge'] = $this->options('gst');
            $order_in['d_charge'] = $this->options('d_charge');
            $order_in['status'] = 1;
            $order_in['d_address'] = isset($input['d_address']) ? $input['d_address'] : '';
            $order_in['outlate'] = isset($input['out_id']) ? $input['out_id'] : null;
            $order_in['order_type'] = isset($input['order_type']) ? $input['order_type'] : 1;
            // $order_in['order_id'] = isset($input['order_id']) ? $input['order_id'] : '';
            // $order_in['amount'] = isset($input['amount']) ? $input['amount'] : '';

            $order = Order::create($order_in);
            $cart_arr = explode(',', $input['cart_id']);
            if (is_array($cart_arr)) {
                $this->add_cart_auth($order, $cart_arr);
            }
        } else {
            // $carts = $request->session()->get('carts');
              $carts = $input;
              // print_r($carts); 

            if ($carts == null) {
                return $this->sendError('Error', 'Cart is empty');
            }

            $validator = Validator::make($input, [
                        'fname' => 'required',
                        'lname' => 'required',
                        'phone' => ['required', 'min:11', new PhoneNumber],
                        'email' => 'required|email|regex:/(.+)@(.+)\.(.+)/i',
                        'card_name' => 'required',
                        'card_number' => 'required',
                        'ccv' => 'required',
                        'e_date' => 'required|date',
                        'd_address' => 'required'
            ]);
            if ($validator->fails()) {
                return $this->sendError('Validation Error.', $validator->errors());
            }

            $card_id['card_name'] = $input['card_name'];
            $card_id['card_number'] = $input['card_number'];
            $card_id['ccv'] = $input['ccv'];
            $card_id['e_date'] = $input['e_date'];
            $card = Card::create($card_id);
            $input['password'] = bcrypt($input['phone']);
            $input['gender'] = null;
            $input['phone'] = $input['phone'];
            if ($card->id) {
                $input['card_id'] = $card->id;
            }
            $user = GuestUser::create($input);
            if ($user->id) {
                $order_in['guest_id'] = $user->id;
                $order_in['date'] = date('Y-m-d', strtotime('+' . $this->options('d_time') . ' day'));
                $order_in['gst_charge'] = $this->options('gst');
                $order_in['d_charge'] = $this->options('d_charge');
                $order_in['d_address'] = $input['d_address'];
                $order_in['outlate'] = isset($input['out_id']) ? isset($input['out_id']) : null;
                // $order_in['order_id'] = isset($input['order_id']) ? $input['order_id'] : '';
                // $order_in['amount'] = isset($input['amount']) ? $input['amount'] : '';
                $order = Order::create($order_in);
                $this->add_cart($order->id, $carts);
            }
            $order['user_info'] = $user;
            $order['card_info'] = $card;
            // return $this->sendResponse($order->id, 'An entry for user record is made.');
        }


        return $this->sendResponse($order, 'Order created successfully.');
    }

    private function add_cart($order_id, $carts) {
        $cart_ids = array();
        if ($carts != null) {
            foreach ($carts['product'] as $id => $value) {
                $price = Product::find($id)->price;
                $in_cart['price'] = (int) $price * (int) $value['qty'];
                $in_cart['quantity'] = (int) $value['qty'];
                $in_cart['product_id'] = (int) $id;
                $in_cart['order_id'] = (int) $order_id;
                $carts = Cart::create($in_cart);
                if (is_array($value['vari'])) {
                    $this->cart_variations($carts->id, $value['vari']);
                }
            }
        }
        return $cart_ids;
    }

    private function add_cart_auth($order, $cart_arr) {
        if (isset($order->id)) {
            foreach ($cart_arr as $cart_id) {
                $car_id = (int) $cart_id;
                $newCart = Cart::find($car_id);
                if ($newCart !== null) {
                    $newCart->order_id = $order->id;
                    $newCart->save();
                }
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show($id) {

  //


        // $order = Order::find($id);

        if (Auth::check()) {
       
            $new_id = 0;
            if ($id === 'undefined') {
                $new_id = Order::where('user_id',Auth::id())->orderBy('id', 'desc')->first()->id;
                 // return $this->sendResponse($id, 'Auth Order retrieved successfully.');
            }else{
               $new_id = $id; 
            }

            $orders = Order::with(
                            array(
                                'user',
                                'cart.product',
                                'cart.catVariation.variations',
                                'orderType',
                                'outlate.banner.type'
                            )
                    )
                    ->select('id', 'd_address', 'd_charge', 'gst_charge','order_type','order_id','amount','driver_id', 'user_id', 'status', 'date', 'time', 'outlate')
                    ->withCount('cart')
                    ->withSum('cart', 'price')
                    ->where('id', $new_id)
                    ->get();

            return $this->sendResponse($orders, 'Auth Order retrieved successfully.');
        } else {

            $orders = Order::with(
                            array(
                                'guest',
                                'cart.catVariation.variations',
                                'cart.product',
                                'orderType',
                                'outlate.banner.type'
                            )
                    )
                    ->select('id', 'd_address', 'd_charge', 'gst_charge', 'order_type', 'guest_id','order_id','amount','driver_id', 'status', 'date', 'time', 'outlate')
                    ->where('id', $id)
                    ->get();

            return $this->sendResponse($orders, 'Order retrieved successfully.');
        }
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order) {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order) {

        $input = $request->all();

        $validator = Validator::make($input, [
                    'status' => 'required'
        ]);

        if ($validator->fails()) {

            return $this->sendError('Validation Error.', $validator->errors());
        }

        $order->status = (int) $input['status'];
        $order->save();

        $orders = Order::with(
                        array(
                            'user',
                            'guest',
                            'cart.product',
                            'cart.catVariation.variations',
                            'orderType',
                            'outlate.banner.type'
                        )
                )
                ->orderByDesc('id')
                ->get();



        return $this->sendResponse($orders, 'Order updated successfully.');

        // return $this->sendResponse($input, 'Product updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order) {
        //
        $order->delete();

        return $this->sendResponse([], 'Product deleted successfully.');
    }

    public function reorder($order) {
        //
        $orders = Order::findOrFail($order);
        $orders->status = 1;
        $orders->save();

        return $this->sendResponse($this->index(), 'Re order successfully.');
    }

}
