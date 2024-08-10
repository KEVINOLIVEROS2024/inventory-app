<?php

namespace App\Filament\Resources;

use App\Filament\Resources\UbicacionesResource\Pages;
use App\Filament\Resources\UbicacionesResource\RelationManagers;
use App\Models\Ubicaciones;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class UbicacionesResource extends Resource
{
    protected static ?string $model = Ubicaciones::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
                Forms\Components\TextInput::make('ubicacion')
                ->required(),
                Forms\Components\TextInput::make('tipo')
                ->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([

                //
                Tables\Columns\TextColumn::make('ubicacion'),
                Tables\Columns\TextColumn::make('tipo'),
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
            'index' => Pages\ListUbicaciones::route('/'),
            'create' => Pages\CreateUbicaciones::route('/create'),
            'edit' => Pages\EditUbicaciones::route('/{record}/edit'),
        ];
    }
}
