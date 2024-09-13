<?php

namespace App\Providers;


use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use App\Models\Role;
use App\Policies\RolePolicy;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */

     protected $policies = [
        Role::class => RolePolicy::class,
        // Otras políticas si es necesario
    ];

    public function register(): void
    {
        //
        
    }

    /**
     * Bootstrap services.
     */

     /**
     * Register any authentication / authorization services.
     *
     * @return void
     */

    public function boot(): void
    {
        //
        $this->registerPolicies();

        // Otros registros de servicios de autenticación y autorización

        Gate::define('access-roles-management', [ShieldPolicy::class, 'accessRolesManagement']);
    }
}
