<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categorias extends Model
{
    use HasFactory;
    protected $fillable = ['categoria'];

    public function activos()
    {
        return $this->hasMany(Activo::class, 'categorias_id');
    }
}
