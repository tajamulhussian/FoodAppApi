<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\BaseController as BaseController;
use App\Models\Options;
use App\Models\Card;
use App\Models\GuestUser;
use Validator;
use App\Rules\PhoneNumber;
use App\Models\Order;
use App\Models\Cart;
use Session;
use Stripe;
use Carbon\Carbon;

class PaymentController extends BaseController {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
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
    private function add_cart($order_id, $carts) {
        $cart_ids = array();
        if ($carts != null) {
            foreach ($carts as $id => $value) {
                $in_cart['price'] = (int) $value['price'];
                $in_cart['quantity'] = (int) $value['quantity'];
                $in_cart['product_id'] = (int) $value['product_id'];
                $in_cart['order_id'] = (int) $order_id;
                $carts = Cart::create($in_cart);
                if (is_array($value['variation_id'])) {
                    $this->cart_variations($carts->id, $value['variation_id']);
                }
            }
        }
        return $cart_ids;
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
        $input = $request->all();
        $validator = Validator::make($input, [
                    'fname' => 'required',
                    'lname' => 'required',
                    'phone' => ['required', 'min:11', new PhoneNumber],
                    'email' => 'required|email|regex:/(.+)@(.+)\.(.+)/i',
                    'city' => 'required',
                    'zip' => 'required',
                    'country' => 'required',
                    'card_name' => 'required',
                    'card_number' => 'required',
                    'ccv' => 'required',
                    'e_date_m' => 'required',
                    'e_date_y' => 'required',
                    'address' => 'required'
        ]);

        if ($validator->fails()) {

            return $this->sendError('Validation Error.', $validator->errors());
        }
        $card = [];

        if (Auth::check()) {
            $user = Auth::user();
            // return $this->sendResponse($user, 'Order retrieved successfully.');
            if ($user->card_id) {
                $card = Card::find($user->card_id);
                if (isset($input['card_name'])) {
                    $card->card_name = $input['card_name'];
                }
                if (isset($input['card_number'])) {
                    $card->card_number = $input['card_number'];
                }
                if (isset($input['ccv'])) {
                    $card->ccv = $input['ccv'];
                }
                if (isset($input['e_date_m'])) {
                    $card->e_date = $input['e_date_m'] . '/' . $input['e_date_y'];
                }
                $card->save();
                $user->card_id = $card->id;

                // return $this->sendResponse($user, 'Order retrieved successfully.');
            } else {
                $card_id['card_name'] = $input['card_name'];
                $card_id['card_number'] = $input['card_number'];
                $card_id['ccv'] = $input['ccv'];
                $card_id['e_date'] = $input['e_date_m'] . '/' . $input['e_date_y'];
                $card = Card::create($card_id);
                $user->card_id = $card->id;
            }
            $order = Order::find((int) $input['order_id'] );
            $users = $this->updateUser($user, $input);
            $order['user_info'] = $users;
            $order['card_info'] = $card;
            return $this->sendResponse($order, 'Order retrieved successfully.');
        } else {

            $card_id['card_name'] = $input['card_name'];
            $card_id['card_number'] = $input['card_number'];
            $card_id['ccv'] = $input['ccv'];
            $card_id['e_date'] = $input['e_date_m'] . '/' . $input['e_date_y'];
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
                $order_in['time'] = $input['time'];


                $order_in['gst_charge'] = $this->options('gst');
                $order_in['d_charge'] = $this->options('d_charge');

                $order_in['order_type'] = (int) $input['order_type'];

                $order_in['d_address'] = isset($input['d_address']) ? $input['d_address'] : '';



                $order_in['outlate'] = isset($input['outlate']) ? $input['outlate'] : null;
                $order = Order::create($order_in);
                $this->add_cart($order->id, $input['local']['cart']);
            }
            $order['user_info'] = $user;
            $order['card_info'] = $card;



            return $this->sendResponse($order, 'Not logged in.');
        }
    }

    private function options($key_name) {
        $options = Options::select('key_value')
                ->where('key_name', $key_name)
                ->get();

        return $options[0]->key_value;
    }

    public function updateUser($users, $input) {
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
        if (isset($input['address'])) {
            $users->address = $input['address'];
        }
        if (isset($input['city'])) {
            $users->city = $input['city'];
        }
        if (isset($input['zip'])) {
            $users->zip = $input['zip'];
        }
        if (isset($input['country'])) {
            $users->country = $input['country'];
        }
        if (isset($input['phone'])) {
            $users->phone = $input['phone'];
        }
        $users->save();
        return $users;
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
    
    public function stripePost(Request $request)
    {
    
     $amount = $request->input('amount');
     $token= $request->input('token');
     // print_r($number);
      Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
      $charge = \Stripe\Charge::create([
      "amount" => $amount,
      "currency" => "USD",
      "source" => $token,
      "description" => "api testing demo"
      ]);
      $paymentIntent = \Stripe\PaymentIntent::create([
      'amount' => $charge->amount,
      'currency' => 'usd',
    ]);

    $data = array("id"=>$charge->id, "amount"=> $charge->amount, "currency"=> $charge->currency,"client_secret" => $paymentIntent->client_secret);
     return response()->json([
        'data' => $data
    ]);
  
     }


  public function placeOrder(Request $request){
    $amount = $request->input('amount');
    $currency = $request->input('currency');
    $order_id = rand();
    $puredate = Carbon::now(); 
    $date = $puredate->toDateTimeString();
    $dates =explode(" ",$date);
    // print_r($);
    // print_r($puredate);exit();
    $data = array(
     'amount' => $amount, 
     'currency' => $currency, 
     'order_id'=> $order_id,
     'date'=> $date
    );
   
    if (is_null($amount)) {

        return $this->sendError('Order is not placed.');
    }

    $order = new Order;
    $order->order_id = $order_id;
    $order->date = $date;
    $order->d_address = '';
    $order->d_charge = 0;
    $order->gst_charge = 0;
    $order->time = 0;
 

    $order->save();
    
    return $this->sendResponse($data, 'Order placed Successfully');
    
   }

}
