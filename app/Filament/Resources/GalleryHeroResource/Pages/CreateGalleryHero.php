<?php

namespace App\Filament\Resources\GalleryHeroResource\Pages;

use App\Filament\Resources\GalleryHeroResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;


class CreateGalleryHero extends CreateRecord
{
    protected static string $resource = GalleryHeroResource::class;

    protected static ?string $title = 'Tambah Koleksi Galeri';

    protected function getCreatedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Sukses')
            ->body('Berhasil Menambahkan Data');
    }
    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
