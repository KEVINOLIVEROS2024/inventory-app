<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class comments extends Model
{
    use HasFactory;

    // Definir los campos que se pueden asignar masivamente
    protected $fillable = [
        'activo_id', // Incluye la clave foránea si es necesario
        'comment',
    ];



    public function activo()
    {
        return $this->belongsTo(Activo::class, 'activo_id');
    }
}
