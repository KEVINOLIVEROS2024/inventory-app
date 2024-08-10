<div>
    <label for="tipo">Selecciona tipo de ubicación:</label>
    <select id="tipo" wire:model="selectedTipo">
        <option value="">Selecciona tipo</option>
        <option value="edificio">Edificio</option>
        <option value="bloque">Bloque</option>
    </select>

    <label for="ubicacion">Selecciona una ubicación:</label>
    <select id="ubicacion" wire:model="selectedUbicacion" wire:loading.attr="disabled">
        <option value="">Selecciona una ubicación</option>
        @foreach($ubicaciones->where('tipo', $selectedTipo) as $ubicacion)
            <option value="{{ $ubicacion->id }}">{{ $ubicacion->nombre }}</option>
        @endforeach
    </select>

    <label for="sububicacion">Selecciona una sububicación:</label>
    <select id="sububicacion" wire:model="selectedSububicacion" wire:loading.attr="disabled">
        <option value="">Selecciona una sububicación</option>
        @foreach($sububicaciones as $sububicacion)
            <option value="{{ $sububicacion->id }}">{{ $sububicacion->nombre }}</option>
        @endforeach
    </select>
</div>
