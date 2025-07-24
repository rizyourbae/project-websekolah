<?php

namespace App\Filament\Resources\BerandaResource\Pages;

use App\Filament\Resources\BerandaResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListBerandas extends ListRecords
{
    protected static string $resource = BerandaResource::class;

    protected static ?string $title = 'Halaman Beranda';
    public function getSubheading(): ?string
    {
        return 'Silahkan kelola data beranda sesuai keinginan';
    }
}
