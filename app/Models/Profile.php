<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Timeline;

class Profile extends Model
{
    use HasFactory;

    protected $fillable = [
        // Bagian: Our Story
        'subjudul',
        'judul_besar',
        'deskripsi',
        // Bagian: gambar utama
        'gambar',
        // Bagian: Visi dan Misi
        'visi',
        'misi',
        // Bagian: Sambutan Kepala Madrasah
        'subjudul_sambutan',
        'judul_sambutan',
        'isi_sambutan',
        'foto_kepala',
        // Bagian: Sejarah (optional narasi umum)
        'sejarah_singkat',
    ];

    public function timelines()
    {
        return $this->hasMany(Timeline::class);
    }
}
