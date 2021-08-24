<?php

namespace App\Policies;

use App\Models\User;
use App\Traits\AuthorizationTrait;
use Illuminate\Auth\Access\HandlesAuthorization;

class ReportPolicy
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
        return $this->hasPermission($user, "report:". __FUNCTION__);
    }
}
