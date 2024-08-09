<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SububicacionesResource\Pages;
use App\Filament\Resources\SububicacionesResource\RelationManagers;
use App\Models\Sububicaciones;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SububicacionesResource extends Resource
{
    protected static ?string $model = Sububicaciones::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
                Forms\Components\TextInput::make('sububicacion')
                ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //
                Tables\Columns\TextColumn::make('sububicacion'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSububicaciones::route('/'),
            'create' => Pages\CreateSububicaciones::route('/create'),
            'edit' => Pages\EditSububicaciones::route('/{record}/edit'),
        ];
    }
}
