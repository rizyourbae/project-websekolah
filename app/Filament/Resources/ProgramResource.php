<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProgramResource\Pages;
use App\Filament\Resources\ProgramResource\RelationManagers;
use App\Models\Program;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\SpatieMediaLibraryFileUpload;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;

class ProgramResource extends Resource
{
    protected static ?string $model = Program::class;

    protected static ?string $navigationIcon = 'heroicon-o-bars-3';
    protected static ?string $navigationLabel = 'Section Program';

    public static function getPluralLabel(): string
    {
        return 'Program';
    }

    protected static ?string $navigationGroup = 'Halaman Awal';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('name')->label('Nama Program')->required(),
                Select::make('type')
                    ->label('Tipe Program')
                    ->options([
                        'reguler' => 'Reguler',
                        'manpk' => 'MAN PK',
                    ])
                    ->required(),
                TextInput::make('badge')->label('Badge (Opsional)')->placeholder("reguler, manpk dll"),
                Textarea::make('description')->label('Deskripsi')->rows(3)->nullable(),
                FileUpload::make('image')
                    ->label('Gambar Program')
                    ->image()
                    ->directory('uploads/program')
                    ->disk('public')
                    ->imagePreviewHeight('150')
                    ->nullable(),
                TextInput::make('order')->label('Urutan Tampil')->numeric()->default(0),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('image')->label('Gambar')->disk('public')->circular(),
                TextColumn::make('name')->label('Nama Program'),
                TextColumn::make('type')->label('Tipe Program')
                    ->formatStateUsing(fn($state) => match ($state) {
                        'reguler' => 'Reguler',
                        'manpk' => 'MAN PK',
                        default => $state,
                    }),
                TextColumn::make('badge')->label('Badge')->limit(20),
                TextColumn::make('order')->label('Urutan')->sortable(),
            ])->defaultSort('order')

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
            'index' => Pages\ListPrograms::route('/'),
            'create' => Pages\CreateProgram::route('/create'),
            'edit' => Pages\EditProgram::route('/{record}/edit'),
        ];
    }
}
