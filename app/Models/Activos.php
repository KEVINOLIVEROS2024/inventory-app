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
        'fecha_compra',
        'valor',
        'estado',
        'sede_id',
        'ubicacion_id',
        'sububicacion_id',
        'user_id',
        'categoria_id',
        'proveedor_id',
        'garantia',
        'notas_activos',
    ];

    public function sede()
    {
        return $this->belongsTo(Sedes::class);
    }

    public function ubicacion()
    {
        return $this->belongsTo(Ubicaciones::class);
    }

    public function sububicacion()
    {
        return $this->belongsTo(Sububicaciones::class);
    }

    public function categoria()
    {
        return $this->belongsTo(Categorias::class);
    }

    public function proveedor()
    {
        return $this->belongsTo(Proveedores::class);
    }
}
