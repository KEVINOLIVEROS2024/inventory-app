<?php

namespace App\Providers;


use Illuminate\Support\ServiceProvider;
use Filament\PluginServiceProvider;
use App\Filament\Resources\RoleResource;
use App\Filament\Resources\Activos;
use App\Filament\Resources\PermissionResource;
use Rmsramos\Activitylog\ActivitylogPlugin;
use Spatie\Activitylog\Models\Activity;
use App\Policies\ActivityPolicy;
use Illuminate\Support\Facades\Gate;



class AppServiceProvider extends ServiceProvider

{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
        
    }

    protected array $resources = [
        RoleResource::class,
        PermissionResource::class,
        UserResource::class,
    ];

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
        

    }

    public function panel(Panel $panel): Panel
    {
        return $panel
        
            ->plugins([

               
                ActivitylogPlugin::make()
                //->resource(CustomActivitylogResource::class)
                    ->label('Log')
                    ->pluralLabel('Logs')
                    ->navigationGroup('Activity Log')
                    ->navigationIcon('heroicon-o-shield-check')
                    ->navigationCountBadge(true)
                    ->navigationSort(2)
                    ->authorize(
                        fn () => auth()->user()->id === 1
                    ),
                    
            ]);
    }
}
