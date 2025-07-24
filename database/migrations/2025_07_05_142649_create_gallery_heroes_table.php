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
        Schema::create('gallery_heroes', function (Blueprint $table) {
            $table->id();
            $table->string('title');        // Judul h2
            $table->text('subtitle');       // Paragraf
            $table->string('image')->nullable();  // Gambar hero
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('gallery_heroes');
    }
};
