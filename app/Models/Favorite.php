<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Favorite extends Model
{
    use HasFactory;

    //relación muchos a muchos->un usuario tiene muchos comercios favoritos y a un comercio muchos usuarios lo tienen como favorito
    public function users()
    {
        return $this->belongsToMany('App\Models\User');
    }
}
