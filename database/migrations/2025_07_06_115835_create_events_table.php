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
        Schema::create('events', function (Blueprint $table) {
            $table->id();
            $table->string('title');              // Judul Event
            $table->date('event_date');           // Tanggal Event
            $table->string('event_time')->nullable();  // Jam Event (Opsional)
            $table->string('location');           // Lokasi Event
            $table->text('content');              // Konten Event
            $table->json('schedule')->nullable(); // Jadwal Event (Opsional, JSON Array)
            $table->string('image')->nullable();  // Foto Event
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('events');
    }
};
