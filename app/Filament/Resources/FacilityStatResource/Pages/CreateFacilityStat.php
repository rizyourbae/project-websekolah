<?php

namespace App\Filament\Resources\FacilityStatResource\Pages;

use App\Filament\Resources\FacilityStatResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;
use Filament\Notifications\Notification;

class CreateFacilityStat extends CreateRecord
{
    protected static string $resource = FacilityStatResource::class;
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
