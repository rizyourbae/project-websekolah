<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'title_schedule',
        'event_date',
        'event_time',
        'location',
        'content',
        'schedule',
        'image',
    ];

    // Untuk cast schedule jadi array
    protected $casts = [
        'schedule' => 'array',
        'event_date' => 'date',
    ];
}
