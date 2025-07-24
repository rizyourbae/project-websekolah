<?php

namespace App\Filament\Resources;

use App\Filament\Resources\FacilityResource\Pages;
use App\Filament\Resources\FacilityResource\RelationManagers;
use App\Models\Facility;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Components\Tabs;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\FileUpload;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ImageColumn;

class FacilityResource extends Resource
{
    protected static ?string $model = Facility::class;

    protected static ?string $navigationIcon = 'heroicon-o-building-office';
    protected static ?string $navigationLabel = 'Fasilitas Madrasah';
    protected static ?string $modelLabel = 'Fasilitas Madrasah';
    protected static ?string $navigationGroup = 'Halaman Selayang Pandang';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('name')
                    ->label('Nama Fasilitas')
                    ->required(),
                Select::make('category')
                    ->label('Kategori')
                    ->options([
                        'Akademik' => 'Akademik',
                        'Umum' => 'Umum',
                        'Ekstrakurikuler' => 'Ekstrakurikuler',
                    ])
                    ->nullable(),
                Select::make('featured_type')
                    ->label('Tipe Penempatan')
                    ->options([
                        'introduction' => 'Introduction (Foto Utama Atas)',
                        'accent' => 'Accent (Foto Samping Atas)',
                        'gallery' => 'Campus Gallery (Galeri Bawah)',
                    ])
                    ->default('gallery')
                    ->required(),
                Textarea::make('description')
                    ->label('Deskripsi')
                    ->nullable()
                    ->rows(3),
                FileUpload::make('image')
                    ->label('Foto')
                    ->image()
                    ->directory('uploads/fasilitas')
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
                    ->label('Foto')
                    ->disk('public')
                    ->circular(),
                TextColumn::make('name')
                    ->label('Nama'),
                TextColumn::make('category')
                    ->label('Kategori'),
                TextColumn::make('featured_type')
                    ->label('Penempatan Foto')
                    ->formatStateUsing(fn($state) => match ($state) {
                        'introduction' => 'Introduction (Foto Utama Atas)',
                        'accent' => 'Accent (Foto Samping Atas)',
                        'gallery' => 'Campus Gallery (Galeri Bawah)',
                        default => '-',
                    }),
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
            'index' => Pages\ListFacilities::route('/'),
            'create' => Pages\CreateFacility::route('/create'),
            'edit' => Pages\EditFacility::route('/{record}/edit'),
        ];
    }
}
