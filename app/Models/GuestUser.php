<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GuestUser extends Model {

    use HasFactory;

    protected $fillable = [
        'fname',
        'lname',
        'email',
        'phone',
        'd_address',
        'card_id'
    ];

}
