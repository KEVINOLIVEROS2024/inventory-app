<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;
use Rmsramos\Activitylog\RelationManagers\ActivitylogRelationManager;
use Rmsramos\Activitylog\Actions\ActivityLogTimelineTableAction;





class Activos extends Model
{

    
    use HasFactory;
    use LogsActivity;

    protected $fillable = [
        'tipo_de_activo',
        'numero_activo',
        'serial_activo',
        'marca',
        'modelo',
        'fecha_lanzamiento',
        'fecha_compra',
        'valor',
        'estados_id',
        'sedes_id',
        'ubicaciones_id',
        'sububicaciones_id',
        'users_id',
        'categorias_id',
        'proveedores_id',
        'garantia',
        'mantenimientos',
        'observaciones',

    
    ];

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->logOnly(['tipo_de_activo',
        'numero_activo',
        'serial_activo',
        'marca',
        'modelo',
        'fecha_lanzamiento',
        'fecha_compra',
        'valor',
        'estados_id',
        'sedes_id',
        'ubicaciones_id',
        'sububicaciones_id',
        'users_id',
        'categorias_id',
        'proveedores_id',
        'garantia',
        'mantenimientos',
        'observaciones',]);
    }

    public function sede()
    {
        return $this->belongsTo(Sedes::class, 'sedes_id');
    }

    public function ubicacion()
    {
        return $this->belongsTo(Ubicaciones::class, 'ubicaciones_id');
    }

    public function sububicacion()
    {
        return $this->belongsTo(Sububicaciones::class, 'sububicaciones_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'users_id');
    }

    public function categoria()
    {
        return $this->belongsTo(Categorias::class, 'categorias_id');
    }

    public function proveedor()
    {
        return $this->belongsTo(Proveedores::class, 'proveedores_id');
    }

    public function Estado()
    {
        return $this->belongsTo(Estado::class, 'estados_id');
    }

    // Define la relación uno a muchos con Comment
    public function Comments()
    {
        return $this->hasMany(Comments::class, 'activo_id');
    }
}
