<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Event;
use Carbon\Carbon;

class EventDetail extends Component
{
    public $event;
    public $latestEvents;

    public function mount($id)
    {
        $this->event = Event::findOrFail($id);
        // Event terbaru di sidebar (exclude current)
        $this->latestEvents = Event::where('id', '!=', $id)
            ->orderBy('event_date', 'desc')
            ->limit(3)
            ->get();
    }

    public function render()
    {
        return view('livewire.event-detail');
    }
}
