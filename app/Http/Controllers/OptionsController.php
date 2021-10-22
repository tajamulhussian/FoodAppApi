<?php

namespace App\Http\Controllers;

use App\Http\Controllers\BaseController as BaseController;
use Illuminate\Http\Request;
use App\Models\Options;

class OptionsController extends BaseController {

    public function index() {

        return $this->sendResponse(['data'], 'Home Page retrieved successfully.');
    }

    function show($key) {
        
       $where_key = explode(",",$key);
        
        $menu = Options::select('id','key_name','key_value')
                ->whereIn('key_name', $where_key)
                ->get();
        return $this->sendResponse($menu, 'Home Page retrieved successfully.');
    }

}
