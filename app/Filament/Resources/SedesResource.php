<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SedesResource\Pages;
use App\Filament\Resources\SedesResource\RelationManagers;
use App\Models\Sedes;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SedesResource extends Resource
{
    protected static ?string $model = Sedes::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
            
                //
                Forms\Components\TextInput::make('ciudad')
                ->required(),
            Forms\Components\TextInput::make('sede')
                ->required(),
            Forms\Components\TextInput::make('direccion')
                ->required(),    
                Forms\Components\TextInput::make('telefono')
                ->required(), 
              
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //
                Tables\Columns\TextColumn::make('ciudad'),
                Tables\Columns\TextColumn::make('sede'),
                Tables\Columns\TextColumn::make('direccion'),
                Tables\Columns\TextColumn::make('telefono'),
          
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
            'index' => Pages\ListSedes::route('/'),
            'create' => Pages\CreateSedes::route('/create'),
            'edit' => Pages\EditSedes::route('/{record}/edit'),
        ];
    }
}
