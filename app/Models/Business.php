<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Business extends Model
{
    use HasFactory;

    //relación uno a muchos inversa -> muchos comercio pertenecen a un usuario
    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }

    //relación uno a muchos inversa -> muchos comercio pertenecen a una categoría
    public function category()
    {
        return $this->belongsTo('App\Models\Category');
    }

    //relación uno a muchos->un comercio tiene muchas subcategories
    public function subcategories()
    {
        return $this->hasMany('App\Models\Subcategory');
    }

    //relación uno a muchos->un comercio tiene muchos productos
    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }

    //relación muchos a muchos->un comercio tiene muchos usuarios favoritos
    public function favorites()
    {
        return $this->hasMany('App\Models\Favorite');
    }

    //relación uno a muchos->un comercio tiene muchos seguidores
    public function followers()
    {
        return $this->hasMany('App\Models\Follower');
    }
}
