<?php

namespace App\Filament\Resources;

use App\Filament\Resources\BerandaResource\Pages;
use App\Filament\Resources\BerandaResource\RelationManagers;
use App\Models\Beranda;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\FileUpload;
use Illuminate\Support\Facades\Storage;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Intervention\Image\ImageManager;
use Illuminate\Support\Str;

class BerandaResource extends Resource
{
    protected static ?string $model = Beranda::class;

    protected static ?string $navigationIcon = 'heroicon-o-home-modern';

    protected static ?string $navigationGroup = 'Halaman Awal';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                FileUpload::make('header')
                    ->label('Header Website')
                    ->disk('public')
                    ->directory('documents/gambar')
                    ->acceptedFileTypes(['image/*'])
                    ->image()
                    ->nullable()
                    ->columnSpan(2)
                    ->preserveFilenames(),
                TextInput::make('judul_1')
                    ->label('Judul Pertama')
                    ->required(),
                TextInput::make('judul_2')
                    ->label('Judul Kedua')
                    ->required(),
                TextInput::make('keterangan_1')
                    ->label('Keterangan 1')
                    ->required(),
                TextInput::make('keterangan_2')
                    ->label('Keterangan 2')
                    ->required(),
                TextInput::make('keterangan_3')
                    ->label('Keterangan 3')
                    ->required(),
                TextInput::make('keterangan_4')
                    ->label('Keterangan 4')
                    ->required(),
                TextInput::make('visi_depan')
                    ->label('Isi Visi')
                    ->required(),
                TextInput::make('misi_depan')
                    ->label('Isi Misi')
                    ->required(),
                TextInput::make('nilai_depan')
                    ->label('Isi Nilai')
                    ->required(),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('header')
                    ->label('Header Website')
                    ->width(100)
                    ->height(100)
                    ->circular()
                    ->toggleable(),
                TextColumn::make('judul_1')
                    ->label('Judul Pertama')
                    ->toggleable(),
                TextColumn::make('judul_2')
                    ->label('Judul Kedua')
                    ->toggleable(),
                TextColumn::make('keterangan_1')
                    ->label('Keterangan Pertama')
                    ->toggleable(),
                TextColumn::make('keterangan_2')
                    ->label('Keterangan Kedua')
                    ->toggleable(),
                TextColumn::make('keterangan_3')
                    ->label('Keterangan Ketiga')
                    ->toggleable(),
                TextColumn::make('keterangan_4')
                    ->label('Keterangan Keempat')
                    ->toggleable(),
                TextColumn::make('visi_depan')
                    ->label('isi Visi')
                    ->toggleable(),
                TextColumn::make('misi_depan')
                    ->label('Isi Misi')
                    ->toggleable(),
                TextColumn::make('nilai_depan')
                    ->label('Isi Nilai')
                    ->toggleable(),
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
            'index' => Pages\ListBerandas::route('/'),
            'create' => Pages\CreateBeranda::route('/create'),
            'edit' => Pages\EditBeranda::route('/{record}/edit'),
        ];
    }

    // ✅ Ditaruh di bawah getPages()
    public static function mutateFormDataBeforeCreate(array $data): array
    {
        return self::convertImageToWebp($data);
    }

    public static function mutateFormDataBeforeSave(array $data): array
    {
        return self::convertImageToWebp($data);
    }

    protected static function convertImageToWebp(array $data): array
    {
        if (isset($data['gambar']) && Storage::disk('public')->exists($data['gambar'])) {
            $originalPath = $data['gambar'];
            $file = Storage::disk('public')->get($originalPath);

            $manager = new ImageManager('gd');
            $image = $manager->read($file)
                ->toWebp(80);

            $filename = Str::slug(pathinfo($originalPath, PATHINFO_FILENAME)) . '-' . time() . '.webp';
            $newPath = 'documents/gambar/' . $filename;

            Storage::disk('public')->put($newPath, $image);

            // Optional: hapus file asli
            Storage::disk('public')->delete($originalPath);

            $data['gambar'] = $newPath;
        }

        return $data;
    }
}
