<?php

namespace App\Filament\Resources\LeaderResource\Pages;

use App\Filament\Resources\LeaderResource;
use Filament\Actions;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListLeaders extends ListRecords
{
    protected static string $resource = LeaderResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make()
            ->label('Tambah')
            ->icon('heroicon-o-document-plus'),
        ];
    }
    protected static ?string $title = 'Daftar Pimpinan';
    public function getSubheading(): ?string
    {
        return 'Silahkan kelola data pimpinan sesuai keinginan';
    }
}
