<?php

namespace App\Policies\Admin;

use App\Models\Support;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class SupportPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function viewAny(User $user)
    {
        return true;
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Support  $support
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(User $user, Support $support)
    {
        return true;
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(User $user)
    {
        return true;
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Support  $support
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user, Support $support)
    {
        return Support::unsupport()->where('id', $support->id)->exists();
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Support  $support
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(User $user, Support $support)
    {
        return Support::unsupport()->where('id', $support->id)->exists();
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Support  $support
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(User $user, Support $support)
    {
        return true;
    }
}
