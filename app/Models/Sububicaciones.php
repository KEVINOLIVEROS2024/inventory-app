<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sububicaciones extends Model
{
    use HasFactory;protected $fillable = ['sububicacion'];

    public function activos()
    {
        return $this->hasMany(Activo::class, 'sububicaciones_id');
    }

    public function ubicacion()
    {
        return $this->belongsTo(Ubicacion::class);
    }
}
