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
        Schema::create('galleries', function (Blueprint $table) {
            $table->id();
            $table->string('title');          // Judul/label overlay, misal: "Campus Events"
            $table->string('image');          // Path foto (uploads)
            $table->string('category')->nullable(); // Kategori (opsional, misal: "Prestasi", "Kegiatan", dll)
            $table->string('description', 512)->nullable(); // Untuk deskripsi detail (optional)
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('galleries');
    }
};
