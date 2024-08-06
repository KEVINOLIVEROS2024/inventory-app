<?php

namespace App\Filament\Resources\SububicacionesResource\Pages;

use App\Filament\Resources\SububicacionesResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSububicaciones extends ListRecords
{
    protected static string $resource = SububicacionesResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
