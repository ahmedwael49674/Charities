<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasFactory;

    /**
     * Indicates if the model should be timestamped.
     *
     * @var bool
     */
    public $timestamps = false;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'token'
    ];

    /**
     * Model's boot function
     */
    public static function boot()
    {
        parent::boot();
        static::creating(function (User $user) {
            $user->token     = Str::random(60);
            $user->email     = strtolower($user->email);
        });
    }

    /**
     * Get the roles that belongs to user.
     */
    public function roles()
    {
        return $this->hasMany(\App\Models\UserRole::class);
    }

    /**
     * Get the applications that belongs to user.
     */
    public function applications()
    {
        return $this->hasMany(\App\Models\Application::class);
    }
}
