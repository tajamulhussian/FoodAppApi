<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model {

    use HasFactory;

    //protected $table = 'orders';
    protected $fillable = [
        'id',
        'product_id',
        'quantity',
        'price',
        'order_id',
        'user_id'
    
    ];

    public function TaskCount() {
        return $this->belongsToMany('App\Models\Order','carts','id','order_id');
    }

    public function catVariation() {
        return $this->hasMany('App\Models\CartVariations')->select('id', 'cart_id')->select('name', 'price', 'cart_id', 'variations_id');
    }

    public function product() {
        return $this->hasMany('App\Models\Product', 'id', 'product_id')->select('id', 'name', 'detail', 'price', 'stock', 'cat_id', 'image','promo','promo_desc');
    }

    public function user() {
        return $this->hasOne('App\Models\User', 'id', 'user_id')->select('id', 'fname', 'lname', 'email', 'address');
    }

}
