<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Facility extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'category',
        'description',
        'image',
        'featured_type'
    ];

    public function stats()
    {
        return $this->hasMany(FacilityStat::class);
    }
}
