<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FacilityStat extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'value',
        'suffix',
        'subtitle'];
}
