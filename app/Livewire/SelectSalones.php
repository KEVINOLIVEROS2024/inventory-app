<?php

namespace App\Livewire;

use Livewire\Component;

class SelectSalones extends Component
{

    public $bloques;
    public $salones;
    public $selectedBloque = null;
    public $selectedSalon = null;

    public function mount()
    {
        $this->bloques = Bloque::all(); // Cargar todos los bloques
        $this->salones = collect(); // Inicialmente vacío
    }

    public function updatedSelectedBloque($bloqueId)
    {
        $this->salones = Salon::where('bloque_id', $bloqueId)->get();
        $this->selectedSalon = null; // Limpiar selección anterior
    }

    public function render()
    {
        return view('livewire.select-salones');
    }
}
