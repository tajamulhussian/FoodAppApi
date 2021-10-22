<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model {

    use HasFactory;

    protected $table = 'pro_cats';
    
      protected $fillable = [
        'name',
        'banner'
    ];

    public function getImage() {
           return $this->hasone('App\Models\File', 'id', 'banner')->select('id', 'path');
    }

    public function getProducts() {


        return $this->hasMany('App\Models\Product', 'cat_id', 'id');
    }

   

}
