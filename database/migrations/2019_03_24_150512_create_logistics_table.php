<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLogisticsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('logistics', function (Blueprint $table) {
            $table->unsignedInteger('cedula');
            $table->string('nombres',100);
            $table->string('apellido1',100);
            $table->string('apellido2',100);
            $table->date('fecha_nacimiento');
            $table->string('genero', 1);
            $table->date('fecha_ingreso');
            $table->integer('numero_empleado');
            $table->text('cargo');
            $table->text('jefe');
            $table->text('zona');
            $table->text('municipio');
            $table->text('departamento');
            $table->integer('ventas_2019');
            $table->string('email',50)->unique();
            $table->text('password');
            $table->text('imagen');
            $table->string('celular',10);
            $table->timestamps();
            $table->primary(['cedula']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('logistics');
    }
}
