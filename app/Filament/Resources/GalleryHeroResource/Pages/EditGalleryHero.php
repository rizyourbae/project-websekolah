<?php

namespace App\Filament\Resources\GalleryHeroResource\Pages;

use App\Filament\Resources\GalleryHeroResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Filament\Notifications\Notification;

class EditGalleryHero extends EditRecord
{
    protected static string $resource = GalleryHeroResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getSavedNotification(): ?Notification
    {
        return Notification::make()
            ->success()
            ->title('Sukses')
            ->body('Berhasil Merubah Data');
    }
}
