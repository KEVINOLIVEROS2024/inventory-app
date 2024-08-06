<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ActivosResource\Pages;
use App\Filament\Resources\ActivosResource\RelationManagers;
use App\Models\Activos;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ActivosResource extends Resource
{
    protected static ?string $model = Activos::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
            
                Forms\Components\TextInput::make('tipo_de_activo')->required(),
                Forms\Components\TextInput::make('numero_activo')->numeric()->required(),
                Forms\Components\Textarea::make('serial_activo')->required(),
                Forms\Components\Textarea::make('marca')->required(),
                Forms\Components\Textarea::make('modelo')->required(),
                Forms\Components\DatePicker::make('fecha_compra')->required(),
                Forms\Components\TextInput::make('valor')->numeric()->required(),
                Forms\Components\Textarea::make('estado')->required(),
                Forms\Components\Select::make('sede_id')
                    ->relationship('sedes', 'sede')
                    ->required(),
                Forms\Components\Select::make('ubicacion_id')
                    ->relationship('ubicaciones', 'ubicacion')
                    ->required(),
                Forms\Components\Select::make('sububicacion_id')
                    ->relationship('sububicaciones', 'sububicacion')
                    ->required(),
                Forms\Components\Select::make('user_id')
                    ->relationship('users', 'name')
                    ->required(),
                Forms\Components\Select::make('categoria_id')
                    ->relationship('categorias', 'categoria')
                    ->required(),
                Forms\Components\Select::make('proveedor_id')
                    ->relationship('proveedores', 'proveedor')
                    ->required(),
                Forms\Components\DatePicker::make('garantia')->required(),
                Forms\Components\Textarea::make('notas_activos')->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                //

                Tables\Columns\TextColumn::make('tipo_de_activo'),
                Tables\Columns\TextColumn::make('numero_activo'),
                Tables\Columns\TextColumn::make('serial_activo'),
                Tables\Columns\TextColumn::make('marca'),
                Tables\Columns\TextColumn::make('modelo'),
                Tables\Columns\TextColumn::make('fecha_compra')->date(),
                Tables\Columns\TextColumn::make('valor'),
                Tables\Columns\TextColumn::make('estado'),
                Tables\Columns\TextColumn::make('sedes.sede')->label('Sede'),
                Tables\Columns\TextColumn::make('ubicaciones.ubicacion')->label('Ubicación'),
                Tables\Columns\TextColumn::make('sububicaciones.sububicacion')->label('Sububicación'),
                Tables\Columns\TextColumn::make('users.name')->label('Usuario'),
                Tables\Columns\TextColumn::make('categorias.categoria')->label('Categoría'),
                Tables\Columns\TextColumn::make('proveedores.proveedor')->label('Proveedor'),
                Tables\Columns\TextColumn::make('garantia')->date(),
                Tables\Columns\TextColumn::make('notas_activos'),
                Tables\Columns\TextColumn::make('created_at')->dateTime()->label('Fecha de Creación'),

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
            'index' => Pages\ListActivos::route('/'),
            'create' => Pages\CreateActivos::route('/create'),
            'edit' => Pages\EditActivos::route('/{record}/edit'),
        ];
    }
}
