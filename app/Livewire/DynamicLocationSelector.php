<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Ubicaciones;
use App\Models\Sububicaciones;

class DynamicLocationSelector extends Component
{


    public $ubicaciones;
    public $sububicaciones = []; // Debe ser un array
    public $selectedUbicacion;

    public function mount()
    {
        $this->ubicaciones = Ubicacion::all();
    }

    public function updatedSelectedUbicacion($ubicacionId)
    {
        $this->sububicaciones = Sububicacion::where('ubicacion_id', $ubicacionId)
            ->pluck('sububicacion', 'id')
            ->toArray(); // Convertir a array
    }

    public function render()
    {
        return view('livewire.dynamic-location-selector');
    }
}
