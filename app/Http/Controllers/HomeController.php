<?php

namespace App\Http\Controllers;

use App\Http\Controllers\BaseController as BaseController;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\TablePins;
use App\Models\Category;
use App\Models\User;
use App\Models\Order;
use Validator;
use Illuminate\Support\Facades\Hash;

class HomeController extends BaseController {

    public function index() {
        return $this->sendResponse(['data'], 'Home Page retrieved successfully.');
    }

    public function popup() {
        return $this->sendResponse(['data'], 'Pop Up Page retrieved successfully.');
    }

    public function category() {
        //  return $this->sendResponse(['menu'], 'products Menus Page retrieved successfully.');
        $menu = Category::with(
                        array(
                            'getImage',
                            'getProducts.variation',
                            'getProducts.getImage'
                        )
                )
                ->select('id', 'name', 'banner')
                ->get();
        if (is_null($menu)) {
            return $this->sendError('Menu not found.');
        }
        return $this->sendResponse($menu, 'Menu retrieved successfully.');
    }

    public function menu_show($id) {

        $menu = Category::with(
                        array(
                            'getProducts.variation',
                            'getProducts.getImage'
                        )
                )
                ->select('id', 'name')
                ->where('id', $id)
                ->get();

        if (is_null($menu)) {

            return $this->sendError('Menu not found.');
        }



        return $this->sendResponse($menu, 'Menu retrieved successfully.');
    }

    public function cat_update(Request $request) {
        $input = $request->all();
        $category = Category::find($input['id']);
        $category->name = $input['name'];
        $category->save();
        return $this->sendResponse($category, 'Category update successfully.');
    }

    public function store(Request $request) {

        $input = $request->all();
        $validator = Validator::make($input, [
                    'name' => 'required',
        ]);
        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }


        $category = Category::create($input);
        return $this->sendResponse($category, 'Add to cart successfully.');
    }

    public function destroy($id) {

        $category = Category::find($id);

        Product::where('cat_id', '=', $id)->update(['cat_id' => null]);
        $category->delete();

        $categorys = Category::with(
                        array(
                            'getImage'
                        )
                )
                ->select('id', 'name', 'banner')
                ->get();

        return $this->sendResponse($categorys, 'Category deleted successfully.');
    }

     public function tableSelections(Request $request) {
        // dd($request);exit;
        $table_pin = $request->input('table_pin');

       

        $TablePins = TablePins::where('table_pin', '=', $table_pin)
                ->select('id','table_no','table_pin','status')
                ->get();
      
        if($TablePins->isEmpty()) {
       
            return $this->sendError('Table Number not found.');
        }



        return $this->sendResponse($TablePins, 'Table Number Get Successfully.');
    }

       public function getUser(Request $request ) {
        $data = User::Find($request->id);
       if (is_null($data)) {

            return $this->sendError('User not found.');
        }

        return $this->sendResponse($data, 'Get User Successfully.');
    }

    public function updateUser(Request $request ) {
      $validator = Validator::make($request->all(),[
            'fname'=>'required',
            'lname'=>'required',
            'phone'=>'required','min:11',
            'gender'=>'required',
            'address'=>'required',
            'city'=>'required',
            'phone'=>'required',
            'zip'=>'required',
            'country'=>'required',
    ]);

       $validatoremail = Validator::make($request->all(),[
            
            'email' => 'email',
           
    ]);

       if(request('email')){
           if ($validatoremail->fails()) {
           	return $this->sendError('Validation Error.', $validatoremail->errors());
        }
       }

       if ($validator->fails()) {

            return $this->sendError('Validation Error.', $validator->errors());
        }
       
          $id = $request->input('id');
          
          $userData = User::find($id);
         
          if(request('email')){
            $email = request('email');
          }else{
            $email = $userData->email;
          }
          if(request('password')){
             $password =Hash::make($request->input('password'));
          }else{
            $password = $userData->password;
          }
          $userData->fname = request('fname');  
          $userData->lname = request('lname'); 
          $userData->email =  $email; 
          $userData->phone = request('phone'); 
          $userData->password = $password;
          $userData->gender = request('gender'); 
          $userData->address = request('address'); 
          $userData->city = request('city'); 
          $userData->zip = request('zip'); 
          $userData->country = request('country'); 
          $userData->card_id = request('card_id');  
          $userData->role = request('role');  
          $userData->save();
         
          // print_r($data);
          // exit();
       if (is_null($userData)) {

            return $this->sendError('user not found.');
        }

        return $this->sendResponse($userData, 'Updated User Successfully.');
    }



 public function placequotations(Request $request){
    
     $key = "pk_test_3e016a6d6c359ec6d65777bb1aa55487"; 
$secret = "sk_test_SsEzBxw445Mz4qY9rZXlU3Y8aKMSnRb40xt7DNWA+kWD6v0dfqdjTnZk/lZwyxGt"; 
$time = time() * 1000;

$baseURL = "https://rest.sandbox.lalamove.com"; // URl to Lalamove Sandbox API
$method = 'POST';
$path = '/v2/orders';
$region = 'MY_JHB';

// Please, find information about body structure and passed values here https://developers.lalamove.com/#get-quotation
$body = '{
    "serviceType": "MOTORCYCLE",
    "specialRequests": [],
    "requesterContact": {
        "name": "test",
        "phone": "0899183138"
    },
    "stops": [
        {
            "location": {
                "lat": "1.6357522763865215",
                "lng": "103.66585968868574"
            },
            "addresses": {
                "en_MY": {
                    "displayString": "Johor Darul Tazim, 81250 Johor Bahru, Johor, Malaysia",
                    "market": "'.$region.'"
                }
            }
        },
        {
            "location": {
                "lat": "1.4636476395000377",
                "lng": "103.76489669525589"
            },
           "addresses": {
               "en_MY": {
                   "displayString": "Jalan Tun Abdul Razak, Bandar Johor Bahru, 80000 Johor Bahru, Johor, Malaysia",
                   "market": "'.$region.'"
               }
           }
        }
   ],

   "deliveries": [
        {
            "toStop": 1,
            "toContact": {
                "name": "dodo",
                "phone": "+60134992087"
            },
           "remarks": "Do not take this order - SANDBOX CLIENT TEST"
        }
   ]
}';

$rawSignature = "{$time}\r\n{$method}\r\n{$path}\r\n\r\n{$body}";
// $signature = hash_hmac("sha256", $rawSignature, $secret);
$signature = hash_hmac("sha256", $rawSignature, $secret);

$startTime = microtime(true);
$token = $key.':'.$time.':'.$signature;

$curl = curl_init();
curl_setopt_array($curl, array(
    CURLOPT_URL => $baseURL.$path,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 3,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HEADER => false, // Enable this option if you want to see what headers Lalamove API returning in response
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS => $body,
    CURLOPT_HTTPHEADER => array(
        "Content-type: application/json; charset=utf-8",
        "Authorization: hmac ".$token, // A unique Signature Hash has to be generated for EVERY API call at the time of making such call.
        "Accept: application/json",
        "X-LLM-Market: {$region}" // Please note to which city are you trying to make API call
    ),
));

$response = curl_exec($curl);
$httpCode = curl_getinfo($curl, CURLINFO_HTTP_CODE);
curl_close($curl);

echo "Total elapsed http request/response time in milliseconds: ".floor((microtime(true) - $startTime)*1000)."\r\n";
echo "Authorization: hmac ".$token."\r\n";
echo 'Status Code: '. $httpCode."\r\n";
echo 'Returned data: '.$response."\r\n";

  }

  


  public function placeOrder(Request $request){ 

   $key = "pk_test_3e016a6d6c359ec6d65777bb1aa55487"; 
   $secret = "sk_test_SsEzBxw445Mz4qY9rZXlU3Y8aKMSnRb40xt7DNWA+kWD6v0dfqdjTnZk/lZwyxGt"; 

$time = time() * 1000;
$baseURL = "https://rest.sandbox.lalamove.com"; // URl to Lalamove Sandbox API
$method = 'POST';
$path = '/v2/orders';
$region = 'MY_JHB';

// Please, find information about body structure and passed values here https://developers.lalamove.com/#get-quotation
$body = '{
    "serviceType": "MOTORCYCLE",
    "specialRequests": [],
    "requesterContact": {
        "name": "test",
        "phone": "0899183138"
    },
    "stops": [
        {
            "location": {
                "lat": "1.6357522763865215",
                "lng": "103.66585968868574"
            },
            "addresses": {
                "en_MY": {
                    "displayString": "Johor Darul Tazim, 81250 Johor Bahru, Johor, Malaysia",
                    "market": "'.$region.'"
                }
            }
        },
        {
            "location": {
                "lat": "1.4636476395000377",
                "lng": "103.76489669525589"
            },
           "addresses": {
               "en_MY": {
                   "displayString": "Jalan Tun Abdul Razak, Bandar Johor Bahru, 80000 Johor Bahru, Johor, Malaysia",
                   "market": "'.$region.'"
               }
           }
        }
   ],
   "deliveries": [
        {
            "toStop": 1,
            "toContact": {
                "name": "dodo",
                "phone": "+60134992087"
            },
           "remarks": "Do not take this order - SANDBOX CLIENT TEST"
        }
   ],
    "quotedTotalFee": {
        "amount": "27.70",
        "currency": "MYR"
    }
}';

$rawSignature = "{$time}\r\n{$method}\r\n{$path}\r\n\r\n{$body}";
$signature = hash_hmac("sha256", $rawSignature, $secret);
$startTime = microtime(true);
$token = $key.':'.$time.':'.$signature;

$curl = curl_init();
curl_setopt_array($curl, array(
    CURLOPT_URL => $baseURL.$path,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 3,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HEADER => false, // Enable this option if you want to see what headers Lalamove API returning in response
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS => $body,
    CURLOPT_HTTPHEADER => array(
        "Content-type: application/json; charset=utf-8",
        "Authorization: hmac ".$token, // A unique Signature Hash has to be generated for EVERY API call at the time of making such call.
        "Accept: application/json",
        "X-LLM-Market: {$region}" // Please note to which city are you trying to make API call
    ),
));

$response = curl_exec($curl);

$http_code = curl_getinfo($curl, CURLINFO_HTTP_CODE);
curl_close($curl);

  $json = json_decode($response, true); 
  $order_id=$json['orderRef'];
  $amount=$json['totalFee'];

   $order = Order::latest()->get();
   
        $id = $order[0]->id;
        // print_r($id); exit();
        $orderdata = Order::find($id);
        $orderdata->order_id = $order_id;
        $orderdata->amount = $amount;
        $orderdata->save();

    return $this->sendResponse([$json], 'Order placed Successfully');
       }  


  public function orderDetails(Request $request){
  
    $key = "pk_test_3e016a6d6c359ec6d65777bb1aa55487"; 
    $secret = "sk_test_SsEzBxw445Mz4qY9rZXlU3Y8aKMSnRb40xt7DNWA+kWD6v0dfqdjTnZk/lZwyxGt"; 
 // print_r($_REQUEST['id']);exit;



$time = time() * 1000;
$baseURL = "https://rest.sandbox.lalamove.com"; // URl to Lalamove Sandbox API
$method = 'GET';
$path = '/v2/orders/'.$request->id.'';
$region = 'MY_JHB';


// Please, find information about body structure and passed values here https://developers.lalamove.com/#get-quotation
$body = '{
    "serviceType": "MOTORCYCLE",
    "specialRequests": [],
    "requesterContact": {
        "name": "test",
        "phone": "0899183138"
    },
    "stops": [
        {
            "location": {
                "lat": "1.6357522763865215",
                "lng": "103.66585968868574"
            },
            "addresses": {
                "en_MY": {
                    "displayString": "Johor Darul Tazim, 81250 Johor Bahru, Johor, Malaysia",
                    "market": "'.$region.'"
                }
            }
        },
        {
            "location": {
                "lat": "1.4636476395000377",
                "lng": "103.76489669525589"
            },
           "addresses": {
               "en_MY": {
                   "displayString": "Jalan Tun Abdul Razak, Bandar Johor Bahru, 80000 Johor Bahru, Johor, Malaysia",
                   "market": "'.$region.'"
               }
           }
        }
   ],
   "deliveries": [
        {
            "toStop": 1,
            "toContact": {
                "name": "dodo",
                "phone": "+60134992087"
            },
           "remarks": "Do not take this order - SANDBOX CLIENT TEST"
        }
   ],
    "quotedTotalFee": {
        "amount": "23.70",
        "currency": "MYR"
    }
}';



$rawSignature = "{$time}\r\n{$method}\r\n{$path}\r\n\r\n{$body}";

$signature =  hash_hmac("sha256", $rawSignature, $secret);
$startTime = microtime(true);
$token = $key.':'.$time.':'.$signature;

$curl = curl_init();
curl_setopt_array($curl, array(
    CURLOPT_URL => $baseURL.$path,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 3,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HEADER => false, // Enable this option if you want to see what headers Lalamove API returning in response
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'GET',
    CURLOPT_POSTFIELDS => $body,
    CURLOPT_HTTPHEADER => array(
        "Content-type: application/json; charset=utf-8",
        "Authorization: hmac ".$token, // A unique Signature Hash has to be generated for EVERY API call at the time of making such call.
        "Accept: application/json",
        "X-LLM-Market: {$region}" // Please note to which city are you trying to make API call
    ),
));

$response = curl_exec($curl);
// print_r($response);exit;

$http_code = curl_getinfo($curl, CURLINFO_HTTP_CODE);
curl_close($curl);

   $json = json_decode($response, true);  
    $driver_id=$json['driverId'];

    // $order = new Order;
    $data =  Order::where('order_id', '=', $request->id)->get();
    foreach ($data as $key => $value) {
       $order_id = $value->id;
       $order = Order::find($order_id);
       $order->driver_id = $driver_id;
       $order->save();
    }
    return $this->sendResponse($json, 'Get order details Successfully');
    
     
 }

   


  public function driversDetails(Request $request){
  
    $key = "pk_test_3e016a6d6c359ec6d65777bb1aa55487"; 
   $secret = "sk_test_SsEzBxw445Mz4qY9rZXlU3Y8aKMSnRb40xt7DNWA+kWD6v0dfqdjTnZk/lZwyxGt"; 
 // print_r($_REQUEST['id']);exit;



$time = time() * 1000;
$baseURL = "https://rest.sandbox.lalamove.com"; // URl to Lalamove Sandbox API
$method = 'GET';
$path = '/v2/orders/'.$request->orderid.'/drivers/'.$request->driverid.'';
$region = 'MY_JHB';
// print_r($path);exit;

// Please, find information about body structure and passed values here https://developers.lalamove.com/#get-quotation
$body = '{
    "serviceType": "MOTORCYCLE",
    "specialRequests": [],
    "requesterContact": {
        "name": "test",
        "phone": "0899183138"
    },
    "stops": [
        {
            "location": {
                "lat": "1.6357522763865215",
                "lng": "103.66585968868574"
            },
            "addresses": {
                "en_MY": {
                    "displayString": "Johor Darul Tazim, 81250 Johor Bahru, Johor, Malaysia",
                    "market": "'.$region.'"
                }
            }
        },
        {
            "location": {
                "lat": "1.4636476395000377",
                "lng": "103.76489669525589"
            },
           "addresses": {
               "en_MY": {
                   "displayString": "Jalan Tun Abdul Razak, Bandar Johor Bahru, 80000 Johor Bahru, Johor, Malaysia",
                   "market": "'.$region.'"
               }
           }
        }
   ],
   "deliveries": [
        {
            "toStop": 1,
            "toContact": {
                "name": "dodo",
                "phone": "+60134992087"
            },
           "remarks": "Do not take this order - SANDBOX CLIENT TEST"
        }
   ],
    "quotedTotalFee": {
        "amount": "23.70",
        "currency": "MYR"
    }
}';



$rawSignature = "{$time}\r\n{$method}\r\n{$path}\r\n\r\n{$body}";

$signature =  hash_hmac("sha256", $rawSignature, $secret);
$startTime = microtime(true);
$token = $key.':'.$time.':'.$signature;

$curl = curl_init();
curl_setopt_array($curl, array(
    CURLOPT_URL => $baseURL.$path,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 3,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HEADER => false, // Enable this option if you want to see what headers Lalamove API returning in response
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'GET',
    CURLOPT_POSTFIELDS => $body,
    CURLOPT_HTTPHEADER => array(
        "Content-type: application/json; charset=utf-8",
        "Authorization: hmac ".$token, // A unique Signature Hash has to be generated for EVERY API call at the time of making such call.
        "Accept: application/json",
        "X-LLM-Market: {$region}" // Please note to which city are you trying to make API call
    ),
));

$response = curl_exec($curl);
// print_r($response);exit;

$http_code = curl_getinfo($curl, CURLINFO_HTTP_CODE);
curl_close($curl);

  $json = json_decode($response, true); 
  return $this->sendResponse([$json], 'Got driver details Successfully');
    
     
 }
 
 public function driversLocation(Request $request){
  
    $key = "pk_test_3e016a6d6c359ec6d65777bb1aa55487"; 
    $secret = "sk_test_SsEzBxw445Mz4qY9rZXlU3Y8aKMSnRb40xt7DNWA+kWD6v0dfqdjTnZk/lZwyxGt"; 
     // print_r($_REQUEST['id']);exit;



    $time = time() * 1000;
    $baseURL = "https://rest.sandbox.lalamove.com"; // URl to Lalamove Sandbox API
    $method = 'GET';
    // $path = '/v2/orders/138520706115/drivers/81995/location';
    $path = '/v2/orders/'.$request->orderid.'/drivers/'.$request->driverid.'/location';


    $region = 'MY_JHB';


    // Please, find information about body structure and passed values here https://developers.lalamove.com/#get-quotation
    $body = '{
        "serviceType": "MOTORCYCLE",
        "specialRequests": [],
        "requesterContact": {
            "name": "test",
            "phone": "0899183138"
        },
        "stops": [
            {
                "location": {
                    "lat": "1.6357522763865215",
                    "lng": "103.66585968868574"
                },
                "addresses": {
                    "en_MY": {
                        "displayString": "Johor Darul Tazim, 81250 Johor Bahru, Johor, Malaysia",
                        "market": "'.$region.'"
                    }
                }
            },
            {
                "location": {
                    "lat": "1.4636476395000377",
                    "lng": "103.76489669525589"
                },
               "addresses": {
                   "en_MY": {
                       "displayString": "Jalan Tun Abdul Razak, Bandar Johor Bahru, 80000 Johor Bahru, Johor, Malaysia",
                       "market": "'.$region.'"
                   }
               }
            }
       ],
       "deliveries": [
            {
                "toStop": 1,
                "toContact": {
                    "name": "dodo",
                    "phone": "+60134992087"
                },
               "remarks": "Do not take this order - SANDBOX CLIENT TEST"
            }
       ],
        "quotedTotalFee": {
            "amount": "23.70",
            "currency": "MYR"
        }
    }';



    $rawSignature = "{$time}\r\n{$method}\r\n{$path}\r\n\r\n{$body}";

    $signature =  hash_hmac("sha256", $rawSignature, $secret);
    $startTime = microtime(true);
    $token = $key.':'.$time.':'.$signature;

    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_URL => $baseURL.$path,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 3,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HEADER => false, // Enable this option if you want to see what headers Lalamove API returning in response
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'GET',
        CURLOPT_POSTFIELDS => $body,
        CURLOPT_HTTPHEADER => array(
            "Content-type: application/json; charset=utf-8",
            "Authorization: hmac ".$token, // A unique Signature Hash has to be generated for EVERY API call at the time of making such call.
            "Accept: application/json",
            "X-LLM-Market: {$region}" // Please note to which city are you trying to make API call
        ),
    ));

    $response = curl_exec($curl);
    // print_r($response);exit;

    $http_code = curl_getinfo($curl, CURLINFO_HTTP_CODE);
    curl_close($curl);

  $json = json_decode($response, true); 
  return $this->sendResponse([$json], 'Got driver location Successfully');
    
     
 }
 
  public function orderCancel(Request $request){
  
    $key = "pk_test_3e016a6d6c359ec6d65777bb1aa55487"; 
    $secret = "sk_test_SsEzBxw445Mz4qY9rZXlU3Y8aKMSnRb40xt7DNWA+kWD6v0dfqdjTnZk/lZwyxGt"; 
     // print_r($_REQUEST['id']);exit;



    $time = time() * 1000;
    $baseURL = "https://rest.sandbox.lalamove.com"; // URl to Lalamove Sandbox API
    $method = 'PUT';
    $path = '/v2/orders/'.$request->orderid.'/cancel';

    $region = 'MY_JHB';


    // Please, find information about body structure and passed values here https://developers.lalamove.com/#get-quotation
    $body = '{
        "serviceType": "MOTORCYCLE",
        "specialRequests": [],
        "requesterContact": {
            "name": "test",
            "phone": "0899183138"
        },
        "stops": [
            {
                "location": {
                    "lat": "1.6357522763865215",
                    "lng": "103.66585968868574"
                },
                "addresses": {
                    "en_MY": {
                        "displayString": "Johor Darul Tazim, 81250 Johor Bahru, Johor, Malaysia",
                        "market": "'.$region.'"
                    }
                }
            },
            {
                "location": {
                    "lat": "1.4636476395000377",
                    "lng": "103.76489669525589"
                },
               "addresses": {
                   "en_MY": {
                       "displayString": "Jalan Tun Abdul Razak, Bandar Johor Bahru, 80000 Johor Bahru, Johor, Malaysia",
                       "market": "'.$region.'"
                   }
               }
            }
       ],
       "deliveries": [
            {
                "toStop": 1,
                "toContact": {
                    "name": "dodo",
                    "phone": "+60134992087"
                },
               "remarks": "Do not take this order - SANDBOX CLIENT TEST"
            }
       ],
        "quotedTotalFee": {
            "amount": "23.70",
            "currency": "MYR"
        }
    }';



    $rawSignature = "{$time}\r\n{$method}\r\n{$path}\r\n\r\n{$body}";

    $signature =  hash_hmac("sha256", $rawSignature, $secret);
    $startTime = microtime(true);
    $token = $key.':'.$time.':'.$signature;

    $curl = curl_init();
    curl_setopt_array($curl, array(
        CURLOPT_URL => $baseURL.$path,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 3,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HEADER => false, // Enable this option if you want to see what headers Lalamove API returning in response
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'PUT',
        CURLOPT_POSTFIELDS => $body,
        CURLOPT_HTTPHEADER => array(
            "Content-type: application/json; charset=utf-8",
            "Authorization: hmac ".$token, // A unique Signature Hash has to be generated for EVERY API call at the time of making such call.
            "Accept: application/json",
            "X-LLM-Market: {$region}" // Please note to which city are you trying to make API call
        ),
    ));

    $response = curl_exec($curl);
    // print_r($response);exit;

    $http_code = curl_getinfo($curl, CURLINFO_HTTP_CODE);
    curl_close($curl);

    echo "Total elapsed http request/response time in milliseconds: ".floor((microtime(true) - $startTime)*1000)."\r\n";
    echo "Authorization: hmac ".$token."\r\n";
    echo 'Status Code: '. $http_code."\r\n";
    echo 'Returned data: '.$response."\r\n";
    
     
 }



}
