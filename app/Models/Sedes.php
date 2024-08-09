<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sedes extends Model
{
    use HasFactory;
    protected $fillable = ['ciudad', 'sede', 'direccion', 'telefono'];

    public function activos()
    {
        return $this->hasMany(Activo::class, 'sedes_id');
    }
}
