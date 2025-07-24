<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Profile;
use App\Models\Leader;

class ShowAbout extends Component
{
    public $profile;
    public $timelines;
    public $leaders;

    public function mount()
    {
        $this->profile = Profile::first(); // ambil data beranda
        $this->timelines = $this->profile->timelines()->orderBy('tahun')->get();
        $this->leaders = Leader::orderBy('nama')->get();
    }

    public function render()
    {
        return view('livewire.show-about');
    }
}
