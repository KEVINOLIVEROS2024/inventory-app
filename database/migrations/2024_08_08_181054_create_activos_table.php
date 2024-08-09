<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('activos', function (Blueprint $table) {
            $table->id();
            $table->string('tipo_de_activo');
            $table->biginteger('numero_activo');
            $table->text('serial_activo');
            $table->text('marca');
            $table->text('modelo');
            $table->date('fecha_lanzamiento');
            $table->date('fecha_compra');
            $table->biginteger('valor');
            $table->text('estado');
            $table->foreignId('sedes_id')->constrained()->onDelete('cascade');
            $table->foreignId('ubicaciones_id')->constrained()->onDelete('cascade');
            $table->foreignId('sububicaciones_id')->constrained()->onDelete('cascade');
            $table->foreignId('users_id')->constrained()->onDelete('cascade');
            $table->foreignId('categorias_id')->constrained()->onDelete('cascade');
            $table->foreignId('proveedores_id')->constrained()->onDelete('cascade');
            $table->date('garantia');
            $table->text('notas_activos');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('activos');
    }
};
