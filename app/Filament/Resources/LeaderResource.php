<?php

namespace App\Filament\Resources;

use App\Filament\Resources\LeaderResource\Pages;
use App\Filament\Resources\LeaderResource\RelationManagers;
use App\Models\Leader;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\FileUpload;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class LeaderResource extends Resource
{
    protected static ?string $model = Leader::class;

    protected static ?string $navigationIcon = 'heroicon-o-user-circle';

    protected static ?string $navigationLabel = 'Daftar Pimpinan';

    public static function getPluralLabel(): string
    {
        return 'Daftar Pimpinan';
    }

    protected static ?string $navigationGroup = 'Halaman Selayang Pandang';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('nama')
                    ->required()
                    ->maxLength(100),

                TextInput::make('jenis_guru')
                    ->label('Jenis Guru')
                    ->maxLength(100),

                FileUpload::make('foto')
                    ->label('Foto Pimpinan')
                    ->image()
                    ->disk('public')
                    ->directory('uploads/profil')
                    ->imageEditor()
                    ->imagePreviewHeight('150')
                    ->nullable(),

                TextInput::make('jabatan')
                    ->label('Jabatan')
                    ->required()
                    ->maxLength(100),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('foto')->circular()->label('Foto'),
                TextColumn::make('nama')->searchable(),
                TextColumn::make('jenis_guru')->label('Jenis Guru')->searchable(),
                TextColumn::make('jabatan')->label('Jabatan')->limit(40)->wrap(),
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
            'index' => Pages\ListLeaders::route('/'),
            'create' => Pages\CreateLeader::route('/create'),
            'edit' => Pages\EditLeader::route('/{record}/edit'),
        ];
    }
}
