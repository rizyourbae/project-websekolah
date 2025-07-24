<?php

namespace App\Filament\Resources;

use App\Filament\Resources\NewsResource\Pages;
use App\Filament\Resources\NewsResource\RelationManagers;
use App\Models\News;
use Filament\Forms;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ImageColumn;

class NewsResource extends Resource
{
    protected static ?string $model = News::class;

    protected static ?string $navigationIcon = 'heroicon-o-newspaper';
    protected static ?string $navigationLabel = 'Berita Madrasah';

    public static function getPluralLabel(): string
    {
        return 'Berita';
    }

    protected static ?string $navigationGroup = 'Halaman Navigasi';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('title')
                    ->label('Judul Berita')
                    ->required()
                    ->maxLength(200),
                TextInput::make('author')
                    ->label('Penulis')
                    ->nullable(),
                DatePicker::make('date')
                    ->label('Tanggal Berita')
                    ->required(),
                Select::make('category')
                    ->label('Kategori')
                    ->options([
                        'Prestasi' => 'Prestasi',
                        'Kegiatan' => 'Kegiatan',
                        'Pengumuman' => 'Pengumuman',
                        'Keagamaan' => 'Keagamaan',
                        'Akademik' => 'Akademik',
                        'Ekstrakurikuler' => 'Ekstrakurikuler',
                        'Alumni' => 'Alumni',
                        'Sosial' => 'Sosial dan Pengabdian',
                        'Sarana' => 'Sarana dan Prasarana',
                        'Lain-lain' => 'Lain-lain',
                    ])
                    ->required(),
                FileUpload::make('image')
                    ->label('Gambar Berita')
                    ->image()
                    ->imageEditor()
                    ->directory('uploads/berita')
                    ->disk('public')
                    ->imagePreviewHeight('150')
                    ->nullable(),
                RichEditor::make('content')
                    ->label('Isi Berita')
                    ->required()
                    ->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('image')
                    ->label('Gambar')
                    ->disk('public')
                    ->width(60)
                    ->height(40)
                    ->extraImgAttributes(['style' => 'object-fit: cover;']),
                TextColumn::make('title')
                    ->label('Judul')
                    ->limit(30)
                    ->searchable(),
                TextColumn::make('author')
                    ->label('Penulis')
                    ->limit(20)
                    ->sortable(),
                TextColumn::make('date')
                    ->label('Tanggal')
                    ->date('d-m-Y')
                    ->sortable(),
                TextColumn::make('category')
                    ->label('Kategori')
                    ->sortable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
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
            'index' => Pages\ListNews::route('/'),
            'create' => Pages\CreateNews::route('/create'),
            'edit' => Pages\EditNews::route('/{record}/edit'),
        ];
    }
}
