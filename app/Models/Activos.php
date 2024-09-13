<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;
use Rmsramos\Activitylog\RelationManagers\ActivitylogRelationManager;
use Rmsramos\Activitylog\Actions\ActivityLogTimelineTableAction;
use OwenIt\Auditing\Auditable;

class Activos extends Model implements \OwenIt\Auditing\Contracts\Auditable
{

    
    use HasFactory;
    use LogsActivity;
    use Auditable;
  
    
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
        ->logOnly([
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

    public function getDescriptionForEvent(string $eventName): string
    {
        $sede = $this->sede ? $this->sede->sede : 'No especificada';
        $ubicacion = $this->ubicacion ? $this->ubicacion->ubicacion : 'No especificada';
        $sububicacion = $this->sububicacion ? $this->sububicacion->sububicacion : 'No especificada';
        $estado = $this->estado ? $this->estado->estado : 'No especificado';
        $user = $this->user ? $this->user->name : 'No especificado';
        $categoria = $this->categoria ? $this->categoria->categoria : 'No especificada';
        $proveedor = $this->proveedor ? $this->proveedor->proveedor : 'No especificado';

        return "Los activos fueron actualizados por {$user}. Actualizado el: {$this->updated_at->format('d/m/Y H:i:s')}. Datos de actividad:
        - Tipo de activo: {$this->tipo_de_activo}
        - Número de activo: {$this->numero_activo}
        - Serial de activo: {$this->serial_activo}
        - Marca: {$this->marca}
        - Modelo: {$this->modelo}
        - Fecha de lanzamiento: {$this->fecha_lanzamiento}
        - Fecha de compra: {$this->fecha_compra}
        - Valor: {$this->valor}
        - Estado: {$estado}
        - Sede: {$sede}
        - Ubicación: {$ubicacion}
        - Sububicación: {$sububicacion}
        - Categoría: {$categoria}
        - Proveedor: {$proveedor}
        - Garantía: {$this->garantia}
        - Mantenimiento: {$this->mantenimientos}
        - Observaciones: {$this->observaciones}";
    }
}
