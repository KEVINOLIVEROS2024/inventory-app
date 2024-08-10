<div>
    <label for="bloque">Selecciona un bloque:</label>
    <select id="bloque" wire:model="selectedBloque">
        <option value="">Selecciona un bloque</option>
        @foreach($bloques as $bloque)
            <option value="{{ $bloque->id }}">{{ $bloque->nombre }}</option>
        @endforeach
    </select>

    <label for="salon">Selecciona un salón:</label>
    <select id="salon" wire:model="selectedSalon">
        <option value="">Selecciona un salón</option>
        @foreach($salones as $salon)
            <option value="{{ $salon->id }}">{{ $salon->nombre }}</option>
        @endforeach
    </select>
</div>
