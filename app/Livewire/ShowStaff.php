<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Teacher;

class ShowStaff extends Component
{
    public $categories;
    public $activeCategory;
    public $q;
    public $search_by = 'bidang'; // default radio: bidang (mapel)

    // Query string config
    protected $queryString = [
        'activeCategory' => ['except' => ''],
        'q' => ['except' => ''],
        'search_by' => ['except' => 'bidang'],
    ];

    public function mount()
    {
        // Ambil semua kategori unik untuk sidebar
        $this->categories = Teacher::select('category')->distinct()->pluck('category')->toArray();

        // Set kategori aktif dari query string, default ke kategori pertama jika kosong
        $this->activeCategory = $this->activeCategory ?? $this->categories[0] ?? null;
    }

    public function render()
    {
        $query = Teacher::query();

        if ($this->q) {
            if ($this->search_by === 'bidang') {
                $query->where('subject', 'like', "%{$this->q}%");
            } elseif ($this->search_by === 'nama') {
                $query->where('name', 'like', "%{$this->q}%");
            } elseif ($this->search_by === 'jabatan') {
                $query->where('position', 'like', "%{$this->q}%");
            }
            $staffs = $query->get();

            // Otomatis set sidebar ke kategori staff ditemukan pertama
            if ($staffs->count() > 0) {
                $this->activeCategory = $staffs->first()->category;
            }
        } else {
            // Tidak sedang search, filter kategori aktif
            $staffs = Teacher::query()
                ->where('category', $this->activeCategory)
                ->get();
        }

        return view('livewire.show-staff', [
            'staffs' => $staffs,
            'categories' => $this->categories,
            'activeCategory' => $this->activeCategory,
            'q' => $this->q,
            'search_by' => $this->search_by,
        ]);
    }
}
