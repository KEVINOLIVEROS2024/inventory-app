<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Proveedores extends Model
{
    use HasFactory;
    protected $fillable = ['proveedor', 'direccion', 'telefono', 'correo', 'paginaweb'];

    public function activos()
    {
        return $this->hasMany(Activo::class, 'proveedores_id');
    }
}
