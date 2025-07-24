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
        Schema::create('profiles', function (Blueprint $table) {
            $table->id();

            // Bagian: Our Story
            $table->string('subjudul')->nullable();
            $table->string('judul_besar')->nullable();
            $table->text('deskripsi')->nullable();

            // Bagian: Gambar utama
            $table->string('gambar')->nullable();

            // Bagian: Visi & Misi
            $table->text('visi')->nullable();
            $table->text('misi')->nullable();

            // Bagian: Sambutan Kepala Madrasah
            $table->string('subjudul_sambutan')->nullable();
            $table->string('judul_sambutan')->nullable();
            $table->text('isi_sambutan')->nullable();
            $table->string('foto_kepala')->nullable();

            // Bagian: Sejarah (optional narasi umum)
            $table->text('sejarah_singkat')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('profiles');
    }
};
