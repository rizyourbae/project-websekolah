<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Beranda;
use App\Models\Program;
use App\Models\News;
use App\Models\Event;
use Carbon\Carbon;

class ShowHome extends Component
{
    public $beranda;
    public $filter = '*'; // Default filter untuk Semua Program
    public $recentNews;
    public $selectedMonth = 'all';
    public function updatedSelectedMonth($value)
    {
        // Reset page kalau pakai pagination (kalau perlu)
    }

    public function mount()
    {
        $this->beranda = Beranda::first(); // Ambil data beranda pertama
        $this->recentNews = News::orderByDesc('date')->take(3)->get();
    }

    public function render()
    {
        $programs = Program::query();

        if ($this->filter != '*') {
            $programs = $programs->where('type', $this->filter);
        }

        $programs = $programs->orderBy('order')->get(); // Ambil semua program sesuai filter dan urutan

        // Ambil semua bulan yang ada pada event
        $availableMonths = Event::selectRaw('MONTH(event_date) as month')
            ->distinct()
            ->orderBy('month')
            ->pluck('month')
            ->toArray();

        // Untuk dropdown bulan, + label bulannya
        $months = [];
        foreach ($availableMonths as $m) {
            $months[$m] = Carbon::create()->month($m)->translatedFormat('F');
        }

        // Query event
        $eventsQuery = Event::orderBy('event_date', 'desc');
        if ($this->selectedMonth !== 'all') {
            $eventsQuery->whereMonth('event_date', $this->selectedMonth);
        }
        $events = $eventsQuery->limit(4)->get();

        return view('livewire.show-home', [
            'programs' => $programs,
            'beranda' => $this->beranda,
            'events' => $events,
            'months' => $months,
            'selectedMonth' => $this->selectedMonth,
        ]);
    }

    // Fungsi untuk memfilter tipe program
    public function filterPrograms($type)
    {
        $this->filter = $type;
    }
}
