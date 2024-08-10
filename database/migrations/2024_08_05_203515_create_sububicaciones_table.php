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
        Schema::create('sububicaciones', function (Blueprint $table) {
            $table->id();
            $table->string('sububicacion');
            $table->foreignId('ubicacion_id')->constrained('ubicaciones')->onDelete('cascade'); // Clave foránea
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations. 
     */
    public function down(): void
    {
        Schema::dropIfExists('sububicaciones');
    }
};
