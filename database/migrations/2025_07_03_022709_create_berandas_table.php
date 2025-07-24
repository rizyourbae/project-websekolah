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
        Schema::create('berandas', function (Blueprint $table) {
            $table->id();
            $table->string('header')->nullable();
            $table->string('judul_1');
            $table->string('judul_2');
            $table->string('keterangan_1');
            $table->string('keterangan_2');
            $table->string('keterangan_3');
            $table->string('keterangan_4');
            $table->string('visi_depan');
            $table->string('misi_depan');
            $table->string('nilai_depan');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('berandas');
    }
};
