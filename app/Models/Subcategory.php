<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subcategory extends Model
{
    use HasFactory;

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }

    public function business()
    {
        return $this->belongsTo('App\Models\Business');
    }

    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }

}
