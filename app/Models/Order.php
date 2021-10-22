<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model {

    use HasFactory;

    protected $table = 'orders';
    protected $fillable = [
        'id',
        'cart_id',
        'order_type',
        'd_address',
        'd_charge',
        'gst_charge',
        'date',
        'time',
        'outlate',
        'user_id',
        'guest_id',
        'order_id',
        'amount',
        'driver_id'
    ];

    public function orderType() {

        return $this->hasOne('App\Models\OrderType', 'id', 'order_type')->select('id', 'type');
    }

    public function product() {
        return $this->hasOne('App\Models\Product', 'id', 'product_id')->select('id', 'name');
    }

    public function cart() {
        return $this->hasMany('App\Models\Cart', 'order_id', 'id')->select('id', 'price', 'quantity', 'product_id', 'order_id');
    }

    public function getCartSum() {
        return \App\Models\Cart::sum('price');
    }

    public function user() {
        return $this->hasOne('App\Models\User', 'id', 'user_id')->select('id', 'fname', 'lname', 'email', 'address');
    }

    public function guest() {
        return $this->hasOne('App\Models\GuestUser', 'id', 'guest_id')->select('id', 'fname', 'lname', 'phone', 'email', 'd_address');
    }

    public function outlate() {
        return $this->hasOne('App\Models\Outlate', 'id', 'outlate')->select('id', 'name', 'address', 'phone', 'banner', 'location', 'status', 'zip');
    }

}
