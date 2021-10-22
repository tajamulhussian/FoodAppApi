<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TablePins extends Model {

    use HasFactory;

    protected $table = 'table_pins';
    
      protected $fillable = [
        'id',
        'table_no',
        'table_pin',
        'status'
    ];

   
   

}
