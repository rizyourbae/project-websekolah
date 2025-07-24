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
        Schema::table('timelines', function (Blueprint $table) {
            $table->unsignedBigInteger('profil_id')->nullable()->after('id');
            // tambahkan foreign key jika ingin lebih kuat
            $table->foreign('profil_id')
                ->references('id')->on('profiles') // <- harus jamak: profils
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('timelines', function (Blueprint $table) {
            $table->dropForeign(['profil_id']);
            $table->dropColumn('profil_id');
        });
    }
};


