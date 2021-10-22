<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    use HasFactory;
    protected $table = 'files';
    
      protected $fillable = [
        'id',
        'path',
        'type'
    ];
    
    
      public function type() {
        return $this->hasOne('App\Models\FileType', 'id', 'type')->select('ext');
    }
}
