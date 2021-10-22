<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MenuItems extends Model {

    protected $table = 'pro_menus_items';
    protected $fillable = [
        'id', 'pro_menu_id', 'product_id'
    ];

    use HasFactory;

    public function product() {
        return $this->hasOne('App\Models\Product', 'id', 'product_id');
    }

}
