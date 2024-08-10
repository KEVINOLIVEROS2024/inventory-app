<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Ubicaciones;
use App\Models\Sububicaciones;

class LocationSelector extends Component
{

    public $ubicaciones;
    public $sububicaciones;
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
        return view('livewire.location-selector');
    }
}
