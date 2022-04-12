<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;

    private mixed $product_id;

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }
}
