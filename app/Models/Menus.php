<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menus extends Model {

    use HasFactory;

    protected $table = 'pro_menus';
    protected $fillable = [
        'id',
        'name',
        'banner'
    ];

    public function getImage() {
        return $this->hasone('App\Models\File', 'id', 'banner')->select('id', 'path');
    }

    public function getItems() {
        return $this->hasMany('App\Models\MenuItems', 'pro_menu_id', 'id');
    }

}
