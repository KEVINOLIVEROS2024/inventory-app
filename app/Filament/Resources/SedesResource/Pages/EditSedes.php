<?php

namespace App\Filament\Resources\SedesResource\Pages;

use App\Filament\Resources\SedesResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditSedes extends EditRecord
{
    protected static string $resource = SedesResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
