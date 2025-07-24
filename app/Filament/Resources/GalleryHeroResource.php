<?php

namespace App\Filament\Resources;

use App\Filament\Resources\GalleryHeroResource\Pages;
use App\Filament\Resources\GalleryHeroResource\RelationManagers;
use App\Models\GalleryHero;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;

class GalleryHeroResource extends Resource
{
    protected static ?string $model = GalleryHero::class;

    protected static ?string $navigationIcon = 'heroicon-o-puzzle-piece';

    protected static ?string $navigationLabel = 'Banner Galeri Madrasah';
    protected static ?string $modelLabel = 'Banner Galeri Madrasah';
    protected static ?string $navigationGroup = 'Halaman Navigasi';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('title')->label('Judul')->required(),
                Textarea::make('subtitle')->label('Deskripsi')->required()->rows(3),
                FileUpload::make('image')
                    ->label('Gambar Hero')
                    ->image()
                    ->imageEditor()
                    ->directory('uploads/galeri')
                    ->disk('public')
                    ->imagePreviewHeight('150')
                    ->nullable(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('image')
                ->label('Gambar Banner')
                ->disk('public')
                ->circular(),
                TextColumn::make('title')
                ->label('Judul'),
                TextColumn::make('subtitle')
                ->label('Sub Judul')
                ->limit(40),
            ])
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
            'index' => Pages\ListGalleryHeroes::route('/'),
            'create' => Pages\CreateGalleryHero::route('/create'),
            'edit' => Pages\EditGalleryHero::route('/{record}/edit'),
        ];
    }
}
