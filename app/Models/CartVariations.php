<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CartVariations extends Model {

    use HasFactory;
    protected $table = 'carts_variations';
    protected $fillable = [
        'id',
        'cart_id',
        'name',
        'price',
        'variations_id'
    ];
    
    
      public function variations() {

        return $this->hasone('App\Models\Variations', 'id', 'variations_id')->select('id','name','price','stock');
    }

}
