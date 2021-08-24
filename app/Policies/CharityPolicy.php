<?php

namespace App\Policies;

use App\Models\User;
use App\Traits\AuthorizationTrait;
use Illuminate\Auth\Access\HandlesAuthorization;

class CharityPolicy
{
    use HandlesAuthorization, AuthorizationTrait;

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user)
    {
        return $this->hasPermission($user, "charity:". __FUNCTION__);
    }
}
