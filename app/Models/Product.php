<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model {

    use HasFactory;

    protected $table = 'products';

    protected $fillable = [
        'id', 'name', 'detail', 'price', 'cat_id', 'menu_id', 'stock', 'image','promo','promo_desc'
    ];

//
    public function getImage() {

        return $this->hasone('App\Models\File', 'id', 'image')->select('id', 'path');
    }

    public function variation() {


        return $this->hasMany('App\Models\Variations')->select('id', 'path')->select('id', 'name', 'price', 'stock', 'product_id');
    }


    public function getCat() {
        return $this->hasOne('App\Models\Category','id', 'cat_id');
    }

    public function getMenu() {
        return $this->hasOne('App\Models\Menus','id', 'menu_id');
    }
}
