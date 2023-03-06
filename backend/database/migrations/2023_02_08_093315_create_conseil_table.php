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
        Schema::create('conseil', function (Blueprint $table) {
            $table->id();
            $table->integer('plante_id')->references('id')->on('plante');
            $table->integer('user_id')->references('id')->on('users');
            $table->string('titreConseil');
            $table->text('contenuConseil');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('conseil');
    }
};
