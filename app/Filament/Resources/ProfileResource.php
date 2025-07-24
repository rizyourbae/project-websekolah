<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProfileResource\Pages;
use App\Filament\Resources\ProfileResource\RelationManagers;
use App\Models\Profile;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Forms\Components\Tabs;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\FileUpload;
use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ProfileResource extends Resource
{
    protected static ?string $model = Profile::class;

    protected static ?string $navigationIcon = 'heroicon-o-building-office-2';
    protected static ?string $navigationGroup = 'Halaman Selayang Pandang';

    protected static ?string $modelLabel = 'Profil Madrasah';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Tabs::make('Profil')
                    ->tabs([
                        Tabs\Tab::make('Our Story')
                            ->schema([
                                TextInput::make('subjudul')
                                    ->label('Subjudul')
                                    ->required()
                                    ->columnSpanFull()
                                    ->validationMessages([
                                        'required' => 'Wajib diisi',
                                    ]),
                                TextInput::make('judul_besar')
                                    ->label('Judul Besar')
                                    ->required()
                                    ->columnSpanFull()
                                    ->validationMessages([
                                        'required' => 'Wajib diisi',
                                    ]),
                                Textarea::make('deskripsi')
                                    ->label('Deskripsi')
                                    ->required()
                                    ->columnSpanFull()
                                    ->validationMessages([
                                        'required' => 'Wajib diisi',
                                    ]),
                            ]),

                        Tabs\Tab::make('Visi & Misi')
                            ->schema([
                                Textarea::make('visi')
                                    ->label('Visi')
                                    ->required()
                                    ->columnSpanFull()
                                    ->validationMessages([
                                        'required' => 'Wajib diisi',
                                    ]),
                                Textarea::make('misi')
                                    ->label('Misi')
                                    ->required()
                                    ->columnSpanFull()
                                    ->validationMessages([
                                        'required' => 'Wajib diisi',
                                    ]),
                            ]),

                        Tabs\Tab::make('Sambutan')
                            ->schema([
                                TextInput::make('subjudul_sambutan')
                                    ->label('Subjudul Sambutan')
                                    ->required()
                                    ->columnSpanFull()
                                    ->validationMessages([
                                        'required' => 'Wajib diisi',
                                    ]),
                                TextInput::make('judul_sambutan')
                                    ->label('Judul Sambutan')
                                    ->required()
                                    ->columnSpanFull()
                                    ->validationMessages([
                                        'required' => 'Wajib diisi',
                                    ]),
                                Textarea::make('isi_sambutan')
                                    ->label('Isi Sambutan')
                                    ->required()
                                    ->columnSpanFull()
                                    ->validationMessages([
                                        'required' => 'Wajib diisi',
                                    ]),
                                FileUpload::make('foto_kepala')
                                    ->label('Foto Kepala Madrasah')
                                    ->directory('uploads/profil')
                                    ->disk('public')
                                    ->image()
                                    ->imageEditor()
                                    ->imagePreviewHeight('150')
                                    ->openable()
                                    ->downloadable()
                                    ->columnSpanFull()
                                    ->validationMessages([
                                        'required' => 'Wajib diisi',
                                    ]),
                            ]),

                        Tabs\Tab::make('Gambar Profil')
                            ->schema([
                                FileUpload::make('gambar')
                                    ->label('Gambar Utama Profil')
                                    ->directory('uploads/profil')
                                    ->disk('public')
                                    ->image()
                                    ->imageEditor()
                                    ->imagePreviewHeight('150')
                                    ->openable()
                                    ->downloadable()
                                    ->columnSpanFull()
                                    ->validationMessages([
                                        'required' => 'Wajib diisi',
                                    ]),
                            ]),
                    ])
                    ->columnSpanFull()
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('judul_besar')->searchable()->sortable(),
                TextColumn::make('subjudul')->limit(30),
                TextColumn::make('updated_at')->dateTime()->label('Terakhir Diperbarui'),
            ])
            ->defaultSort('updated_at', 'desc')
            ->paginationPageOptions([10, 25, 50])

            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
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
            'index' => Pages\ListProfiles::route('/'),
            'create' => Pages\CreateProfile::route('/create'),
            'view' => Pages\ViewProfile::route('/{record}'),
            'edit' => Pages\EditProfile::route('/{record}/edit'),
        ];
    }
}
