<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Activos extends Model
{
    use HasFactory;
    protected $fillable = [
        'tipo_de_activo',
        'numero_activo',
        'serial_activo',
        'marca',
        'modelo',
        'fecha_lanzamiento',
        'fecha_compra',
        'valor',
        'estado',
        'sedes_id',
        'ubicaciones_id',
        'sububicaciones_id',
        'users_id',
        'categorias_id',
        'proveedores_id',
        'garantia',
        'notas_activos',
    ];

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
}
