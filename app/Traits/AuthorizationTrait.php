<?php
namespace App\Traits;

use App\Models\User;

trait AuthorizationTrait
{
    public function hasPermission(User $user, string $permission):bool
    {
        $roles =  $user->roles()->pluck('role');
        foreach ($roles as $role) {
            if (in_array($permission, constant("\App\Models\Permisstion::". $role))) {
                return true;
            }
        }
        return false;
    }
}
