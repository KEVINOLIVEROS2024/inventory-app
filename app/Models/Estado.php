<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Estado extends Model
{
    use HasFactory;

    protected $fillable = ['estado'];

    public function activos()
    {
        return $this->hasMany(Activo::class, 'estados_id');
    }  
}
