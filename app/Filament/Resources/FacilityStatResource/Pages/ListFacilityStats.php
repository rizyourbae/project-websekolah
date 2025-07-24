<?php

namespace App\Filament\Resources\FacilityStatResource\Pages;

use App\Filament\Resources\FacilityStatResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Filament\Actions\CreateAction;

class ListFacilityStats extends ListRecords
{
    protected static string $resource = FacilityStatResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make()
                ->label('Tambah')
                ->icon('heroicon-o-document-plus'),
        ];
    }

    protected static ?string $title = 'Statistik Fasilitas Madrasah';

    public function getSubheading(): ?string
    {
        return 'Silahkan kelola data sesuai keinginan';
    }
}
