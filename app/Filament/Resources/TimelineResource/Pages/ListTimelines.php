<?php

namespace App\Filament\Resources\TimelineResource\Pages;

use App\Filament\Resources\TimelineResource;
use Filament\Actions;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListTimelines extends ListRecords
{
    protected static string $resource = TimelineResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make()
                ->label('Tambah')
                ->icon('heroicon-o-document-plus'),
        ];
    }
    protected static ?string $title = 'Timeline Profil';
    public function getSubheading(): ?string
    {
        return 'Silahkan kelola data sesuai keinginan';
    }
}
