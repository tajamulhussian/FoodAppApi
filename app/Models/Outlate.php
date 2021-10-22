<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Outlate extends Model {

    use HasFactory;

    protected $fillable = [
        'name',
        'address',
        'phone',
        'start',
        'end',
        'location',
        'banner',
        'zip',
    ];
    protected $table = 'outlates';
    public $timestamps = true;
    protected $dates = ['deleted_at'];

    public function getBanner() {
        return $this->hasOne('Files');
    }

    public function banner() {
        return $this->hasOne('App\Models\File', 'id', 'banner')->select('id', 'path', 'type');
    }

}
