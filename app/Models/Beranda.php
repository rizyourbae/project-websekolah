<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Beranda extends Model
{
    use HasFactory;
    protected $fillable = [
        'header',
        'judul_1',
        'judul_2',
        'keterangan_1',
        'keterangan_2',
        'keterangan_3',
        'keterangan_4',
        'visi_depan',
        'misi_depan',
        'nilai_depan',
    ];

}
