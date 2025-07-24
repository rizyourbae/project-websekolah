<?php

namespace App\Filament\Resources;

use App\Filament\Resources\GalleryResource\Pages;
use App\Filament\Resources\GalleryResource\RelationManagers;
use App\Models\Gallery;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Select;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;

class GalleryResource extends Resource
{
    protected static ?string $model = Gallery::class;

    protected static ?string $navigationIcon = 'heroicon-o-photo';

    protected static ?string $navigationLabel = 'Galeri Madrasah';
    protected static ?string $modelLabel = 'Galeri Madrasah';
    protected static ?string $navigationGroup = 'Halaman Navigasi';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('title')->label('Judul')->required(),
                FileUpload::make('image')
                    ->label('Foto')
                    ->image()
                    ->imageEditor()
                    ->directory('uploads/galeri')
                    ->disk('public')
                    ->imagePreviewHeight('150')
                    ->required(),
                Select::make('category')
                    ->label('Kategori')
                    ->options([
                        'Kegiatan' => 'Kegiatan',
                        'Prestasi' => 'Prestasi',
                        'Ekstrakurikuler' => 'Ekstrakurikuler',
                        'Fasilitas' => 'Fasilitas',
                        'Lainnya' => 'Lainnya',
                    ])
                    ->nullable(),
                Textarea::make('description')->label('Deskripsi')->nullable()->rows(2),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('image')
                ->label('Foto')
                ->disk('public')
                ->circular(),
                TextColumn::make('title')
                ->label('Judul'),
                TextColumn::make('category')
                ->label('Kategori'),
                TextColumn::make('description')
                ->label('Deskripsi')
                ->limit(40),
            ])
            ->defaultSort('id', 'desc')

            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListGalleries::route('/'),
            'create' => Pages\CreateGallery::route('/create'),
            'edit' => Pages\EditGallery::route('/{record}/edit'),
        ];
    }
}
