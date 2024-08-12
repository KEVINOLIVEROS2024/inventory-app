<!-- resources/views/livewire/dynamic-location-selector.blade.php -->
<div>
    <label for="ubicacion">Selecciona una ubicación:</label>
    <select id="ubicacion" wire:model="selectedUbicacion">
        <option value="">Selecciona una ubicación</option>
        @foreach($ubicaciones as $ubicacion)
            <option value="{{ $ubicacion->id }}">{{ $ubicacion->ubicacion }}</option>
        @endforeach
    </select>

    <label for="sububicacion">Selecciona una sububicación:</label>
    <select id="sububicacion" wire:model="selectedSububicacion">
        <option value="">Selecciona una sububicación</option>
        @foreach($sububicaciones as $id => $sububicacion)
            <option value="{{ $id }}">{{ $sububicacion }}</option>
        @endforeach
    </select>
</div>
