<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Variations extends Model {

    use HasFactory;
    protected $table = 'variations';
    protected $fillable = [
        'id',
        'name',
        'product_id',
        'price',
        'stock'
    ];

    public function getImage() {

        return $this->hasone('App\Models\File', 'id', 'file_id')->select('id', 'path');
    }

}
