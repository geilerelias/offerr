<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Laravel\Jetstream\HasProfilePhoto;
use Laravel\Jetstream\HasTeams;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens;
    use HasFactory;
    use HasProfilePhoto;
    use HasTeams;
    use Notifiable;
    use TwoFactorAuthenticatable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
        'two_factor_recovery_codes',
        'two_factor_secret',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array
     */
    protected $appends = [
        'profile_photo_url',
    ];

    //relación uno a muchos->un usuario muchos comercio
    public function businesses()
    {
        return $this->hasMany('App\Models\Business');
    }

    //relación uno a muchos->un usuario muchos categorías
    public function categories()
    {
        return $this->hasMany('App\Models\Category');
    }

    //relación uno a muchos->un usuario muchas subcategorías
    public function subcategories()
    {
        return $this->hasMany('App\Models\Subcategory');
    }

    //relación uno a muchos->un usuario muchos productos
    public function products()
    {
        return $this->hasMany('App\Models\Product');
    }

    //relación muchos a muchos->un usuario tiene muchos comercios favoritos y a un comercio muchos usuarios lo tienen como favorito
    public function favorites()
    {
        return $this->belongsToMany('App\Models\Favorite');
    }

}
