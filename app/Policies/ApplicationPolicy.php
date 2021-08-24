<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Application;
use App\Traits\AuthorizationTrait;
use Illuminate\Auth\Access\HandlesAuthorization;

class ApplicationPolicy
{
    use HandlesAuthorization, AuthorizationTrait;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function viewAny(User $user)
    {
        return $this->hasPermission($user, "application:". __FUNCTION__);
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(User $user)
    {
        return $this->hasPermission($user, "application:". __FUNCTION__);
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Application  $Application
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user, Application $Application)
    {
        return $this->hasPermission($user, "application:". __FUNCTION__);
    }
}
