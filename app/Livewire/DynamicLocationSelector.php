<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Ubicaciones;
use App\Models\Sububicaciones;

class DynamicLocationSelector extends Component
{
    public $ubicaciones;
    public $sububicaciones;
    public $selectedTipo = null;
    public $selectedUbicacion = null;
    public $selectedSububicacion = null;

    public function mount()
    {
        $this->ubicaciones = Ubicaciones::all();
        $this->sububicaciones = collect(); // Inicialmente vacío
    }

    public function updatedSelectedUbicacion($ubicacionId)
    {
        $this->sububicaciones = Sububicaciones::where('ubicacion_id', $ubicacionId)->get();
        $this->selectedSububicacion = null; // Limpiar selección anterior
    }


    public function render()
    {
        return view('livewire.dynamic-location-selector');
    }
}
