<?php

namespace App\Filament\Resources\GalleryHeroResource\Pages;

use App\Filament\Resources\GalleryHeroResource;
use Filament\Actions;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListGalleryHeroes extends ListRecords
{
    protected static string $resource = GalleryHeroResource::class;
    protected static ?string $title = 'Header Galeri Madrasah';
    public function getSubheading(): ?string
    {
        return 'Silahkan kelola data sesuai keinginan';
    }
}
