<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }

    //relación uno a muchos->una categoria tiene muchos comercios
    public function businesses()
    {
        return $this->hasMany('App\Models\Business');
    }
}
