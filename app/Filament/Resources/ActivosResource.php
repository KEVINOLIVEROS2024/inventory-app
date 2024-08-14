<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ActivosResource\Pages;
use App\Filament\Resources\ActivosResource\RelationManagers;
use App\Livewire\DynamicLocationSelector;
use App\Models\Activos;
use App\Models\Estados;
use App\Models\Comments;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use App\Models\Ubicaciones;
use App\Models\Sububicaciones;
use App\Livewire\ActivoDetailsModal;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\DatePicker;
use Illuminate\Support\Facades\Http;
use App\Models\User;
use Rmsramos\Activitylog\RelationManagers\ActivitylogRelationManager;
use Rmsramos\Activitylog\Actions\ActivityLogTimelineTableAction;
use Spatie\Activitylog\Traits\LogsActivity;
 

class ActivosResource extends Resource
{
    protected static ?string $model = Activos::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('tipo_de_activo')
                    ->required(),
                Forms\Components\TextInput::make('numero_activo')
                    ->required(),
                Forms\Components\TextInput::make('serial_activo')
                    ->required(),
                Forms\Components\TextInput::make('marca')
                    ->required(),
                Forms\Components\TextInput::make('modelo')
                    ->required(),
                Forms\Components\DatePicker::make('fecha_lanzamiento')
                    ->required(),
                Forms\Components\DatePicker::make('fecha_compra')
                    ->required(),
                Forms\Components\TextInput::make('valor')
                    ->numeric()
                    ->required(),

                Forms\Components\Select::make('sedes_id')
                    ->relationship('sede', 'sede'),

                Forms\Components\Select::make('estados_id')
                    ->relationship('estado', 'estado'),


                // Otros campos
                Forms\Components\Select::make('ubicaciones_id')
                    ->label('Ubicación')
                    ->options(Ubicaciones::all()->pluck('ubicacion', 'id'))
                    ->reactive()
                    ->required()
                    ->afterStateUpdated(function ($state, callable $set) {
                        $sububicaciones = Sububicaciones::where('ubicacion_id', $state)
                            ->pluck('sububicacion', 'id')
                            ->toArray();
                        $set('sububicaciones_id', $sububicaciones);
                    }),
                Forms\Components\Select::make('sububicaciones_id')
                    ->label('Sububicación')
                    ->options(fn($get) => Sububicaciones::where('ubicacion_id', $get('ubicaciones_id'))
                        ->pluck('sububicacion', 'id')
                        ->toArray())
                    ->required(),


                /*Forms\Components\Select::make('users_id')
                    ->nullable()
                    ->relationship('user', 'name'), */
                // Campo TextInput para búsqueda de usuarios

                // Campo Select para buscar y seleccionar usuario
                
                Forms\Components\Select::make('users_id')
                    ->label('Usuario')
                    ->options(function () {
                        return User::all()->pluck('name', 'id');
                    })
                    ->searchable()
                    ->placeholder('Seleccione un usuario'),
                


                Forms\Components\Select::make('categorias_id')
                    ->relationship('categoria', 'categoria'),
                Forms\Components\Select::make('proveedores_id')
                    ->relationship('proveedor', 'proveedor'),
                Forms\Components\DatePicker::make('garantia'),
                Forms\Components\TextInput::make('mantenimientos'),
                Forms\Components\TextInput::make('observaciones')->nullable(),

                //
                Forms\Components\Select::make('users_id')
                    ->relationship('user', 'name')
                    ->required()
                    ->label('Ultimo Comentario'),

                Forms\Components\Repeater::make('comment')
                    ->relationship('comments')
                    ->schema([
                        Forms\Components\Textarea::make('comment')
                            ->required()
                            ->label('Commentario'),
                    ])
                    ->columns(1),


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
                Tables\Columns\TextColumn::make('fecha_lanzamiento'),
                Tables\Columns\TextColumn::make('fecha_compra'),
                Tables\Columns\TextColumn::make('valor'),
                Tables\Columns\TextColumn::make('estado.estado'),
                Tables\Columns\TextColumn::make('sede.sede'),
                Tables\Columns\TextColumn::make('ubicacion.ubicacion'),
                Tables\Columns\TextColumn::make('sububicacion.sububicacion'),
                Tables\Columns\TextColumn::make('user.name'),
                Tables\Columns\TextColumn::make('categoria.categoria'),
                Tables\Columns\TextColumn::make('proveedor.proveedor'),
                Tables\Columns\TextColumn::make('garantia'),
                Tables\Columns\TextColumn::make('mantenimientos'),
                Tables\Columns\TextColumn::make('observaciones'),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime(),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime(),

                Tables\Columns\TextColumn::make('user.name'),
                Tables\Columns\TextColumn::make('comments.comment')
                    ->label('Comentarios')
                    ->limit(10),



            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
                ActivityLogTimelineTableAction::make('Activities')
                ->timelineIcons([
                    'created' => 'heroicon-m-check-badge',
                    'updated' => 'heroicon-m-pencil-square',
                ])
                ->timelineIconColors([
                    'created' => 'info',
                    'updated' => 'warning',
                ]),



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
            //ActivitylogRelationManager::class,
            ActivitylogRelationManager::class,
            
            
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
