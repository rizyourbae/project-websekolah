<?php

namespace App\Filament\Resources\ContactResource\Pages;

use App\Filament\Resources\ContactResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListContacts extends ListRecords
{
    protected static string $resource = ContactResource::class;
    protected static ?string $title = 'Kontak Madrasah';
    public function getSubheading(): ?string
    {
        return 'Silahkan kelola data sesuai keinginan';
    }
}
