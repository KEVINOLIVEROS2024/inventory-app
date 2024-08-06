<?php

namespace App\Filament\Resources\SedesResource\Pages;

use App\Filament\Resources\SedesResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSedes extends ListRecords
{
    protected static string $resource = SedesResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
