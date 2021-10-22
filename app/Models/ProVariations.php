<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProVariations extends Model {

    use HasFactory;

    protected $table = 'varations';
    protected $fillable = [
        'id',
        'name',
        'product_id',
    ];

}
