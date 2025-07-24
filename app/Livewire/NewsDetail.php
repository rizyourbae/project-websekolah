<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\News;

class NewsDetail extends Component
{
    public $id;
    public $news;

    // Ini otomatis dipanggil saat route diakses
    public function mount($id)
    {
        $this->id = $id;
        $this->news = News::findOrFail($id);
    }

    public function render()
    {
        return view('livewire.news-detail');
    }
}
