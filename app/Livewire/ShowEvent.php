<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Event;
use Carbon\Carbon;

class ShowEvent extends Component
{
    use WithPagination;

    public $perPage = 5;
    public $calendarYear;
    public $calendarMonth;

    public function mount()
    {
        // Ambil tahun dan bulan dari query string, jika tidak ada ambil sekarang
        $this->calendarYear = request()->query('calendarYear', now()->year);
        $this->calendarMonth = request()->query('calendarMonth', now()->month);
    }

    public function render()
    {
        // Event utama (daftar utama, pakai paginate)
        $events = Event::orderBy('event_date', 'desc')->paginate($this->perPage);

        // Event untuk sidebar kalender (group by hari)
        $calendarEvents = Event::whereYear('event_date', $this->calendarYear)
            ->whereMonth('event_date', $this->calendarMonth)
            ->get()
            ->groupBy(function ($event) {
                // Cek validitas tanggal
                if (!$event->event_date) return null;
                try {
                    return Carbon::parse((string) $event->event_date)->day;
                } catch (\Exception $e) {
                    return null;
                }
            });

        // Event unggulan (terdekat dari hari ini)
        $featuredEvent = Event::where('event_date', '>=', now())
            ->orderBy('event_date')
            ->first();

        return view('livewire.show-event', [
            'events' => $events,
            'calendarEvents' => $calendarEvents,
            'calendarMonth' => $this->calendarMonth,
            'calendarYear' => $this->calendarYear,
            'featuredEvent' => $featuredEvent,
        ]);
    }
}
