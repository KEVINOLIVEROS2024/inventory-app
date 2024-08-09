<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProveedoresResource\Pages;
use App\Filament\Resources\ProveedoresResource\RelationManagers;
use App\Models\Proveedores;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ProveedoresResource extends Resource
{
    protected static ?string $model = Proveedores::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
                Forms\Components\TextInput::make('proveedor')
                ->required(),
            Forms\Components\TextInput::make('direccion')
                ->required(),
            Forms\Components\TextInput::make('telefono')
                ->required(),    
                Forms\Components\TextInput::make('correo')
                ->required(), 
                Forms\Components\TextInput::make('paginaweb')
                ->required(), 
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //
                Tables\Columns\TextColumn::make('proveedor'),
                Tables\Columns\TextColumn::make('direccion'),
                Tables\Columns\TextColumn::make('telefono'),
                Tables\Columns\TextColumn::make('correo'),
                Tables\Columns\TextColumn::make('paginaweb'),
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
            'index' => Pages\ListProveedores::route('/'),
            'create' => Pages\CreateProveedores::route('/create'),
            'edit' => Pages\EditProveedores::route('/{record}/edit'),
        ];
    }
}
