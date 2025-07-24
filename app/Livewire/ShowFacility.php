<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Facility;
use App\Models\FacilityStat;

class ShowFacility extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';

    public function render()
    {
        $stats = FacilityStat::all();

        // Gambar utama introduction
        $mainFacility = Facility::where('featured_type', 'introduction')->first();

        // Gambar accent
        $accentFacility = Facility::where('featured_type', 'accent')->first();

        // Gallery bawah (campus gallery) dengan pagination, misal 6 per halaman
        $galleryFacilities = Facility::where('featured_type', 'gallery')->paginate(5);

        return view('livewire.show-facility', [
            'stats' => $stats,
            'mainFacility' => $mainFacility,
            'accentFacility' => $accentFacility,
            'galleryFacilities' => $galleryFacilities,
        ]);
    }
}
