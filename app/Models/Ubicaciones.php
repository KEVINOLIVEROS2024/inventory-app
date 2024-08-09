<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ubicaciones extends Model
{
    use HasFactory;
    protected $fillable = ['ubicacion'];

    public function activos()
    {
        return $this->hasMany(Activo::class, 'ubicaciones_id');
    }
}
