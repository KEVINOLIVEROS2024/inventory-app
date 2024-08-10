<div>
    <label for="ubicacion">Selecciona un edificio:</label>
    <select id="ubicacion" wire:model="selectedUbicacion">
        <option value="">Selecciona un edificio</option>
        @foreach($ubicaciones as $ubicacion)
            <option value="{{ $ubicacion->id }}">{{ $ubicacion->nombre }}</option>
        @endforeach
    </select>

    <label for="sububicacion">Selecciona un área:</label>
    <select id="sububicacion" wire:model="selectedSububicacion">
        <option value="">Selecciona un área</option>
        @foreach($sububicaciones as $sububicacion)
            <option value="{{ $sububicacion->id }}">{{ $sububicacion->nombre }}</option>
        @endforeach
    </select>
</div>
