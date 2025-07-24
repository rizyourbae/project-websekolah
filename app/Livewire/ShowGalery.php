<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Gallery;
use Livewire\WithPagination;
use App\Models\GalleryHero;

class ShowGalery extends Component
{
    use WithPagination;
    public $perPage = 5;
    public function render()
    {
        $galleries = Gallery::orderBy('id', 'desc')->paginate($this->perPage); 
        $hero = GalleryHero::first();

        return view('livewire.show-galery', [
            'galleries' => $galleries,
            'hero' => $hero,
        ]);
    }
}
