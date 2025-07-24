<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\News;

class ShowNews extends Component
{
    use WithPagination;

    public function render()
    {
        // Berita terbaru (untuk hero section 5 item), lalu grid posts (6 per page)
        $heroNews = News::orderBy('date', 'desc')->take(5)->get();
        $newsGrid = News::orderBy('date', 'desc')->paginate(6);

        return view('livewire.show-news', [
            'heroNews' => $heroNews,
            'newsGrid' => $newsGrid,
        ]);
    }
}
