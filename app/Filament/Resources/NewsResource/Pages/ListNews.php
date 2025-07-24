<?php

namespace App\Filament\Resources\NewsResource\Pages;

use App\Filament\Resources\NewsResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListNews extends ListRecords
{
    protected static string $resource = NewsResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make()
                ->label('Tambah')
                ->icon('heroicon-o-document-plus'),
        ];
    }
    protected static ?string $title = 'Daftar Berita Madrasah';
    public function getSubheading(): ?string
    {
        return 'Silahkan kelola data sesuai keinginan';
    }
}
