<?php

namespace App\Filament\Resources\SububicacionesResource\Pages;

use App\Filament\Resources\SububicacionesResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditSububicaciones extends EditRecord
{
    protected static string $resource = SububicacionesResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
