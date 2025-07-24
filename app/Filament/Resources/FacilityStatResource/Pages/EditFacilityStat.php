<?php

namespace App\Filament\Resources\FacilityStatResource\Pages;

use App\Filament\Resources\FacilityStatResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;
use Filament\Notifications\Notification;

class EditFacilityStat extends EditRecord
{
    protected static string $resource = FacilityStatResource::class;

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
