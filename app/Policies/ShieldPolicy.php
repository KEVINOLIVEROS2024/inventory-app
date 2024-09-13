<?php

namespace App\Policies;

use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class ShieldPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can access the roles management module.
     */
    public function accessRolesManagement(User $user): bool
    {
        // Verifica si el usuario tiene el rol 'super_admin'
        return $user->hasRole('super_admin');
    }
}
