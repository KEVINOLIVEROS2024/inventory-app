<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
/**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('activos', function (Blueprint $table) {
            $table->string('serial_activo')->nullable(); // Puedes usar nullable() si deseas permitir valores nulos
            $table->string('numero_activo')->nullable(); // Puedes usar nullable() si deseas permitir valores nulos
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('activos', function (Blueprint $table) {
            $table->dropColumn(['serial_activo', 'numero_activo']);
        });
    }
};
