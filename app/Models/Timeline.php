<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Profile;

class Timeline extends Model
{
    use HasFactory;

    protected $fillable = [
        'profile_id',
        'tahun',
        'keterangan',
    ];

    public function profile()
    {
        return $this->belongsTo(Profile::class); // Tidak perlu sebut foreign key lagi
    }
}
