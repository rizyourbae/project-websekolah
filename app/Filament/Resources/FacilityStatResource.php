<?php

namespace App\Filament\Resources;

use App\Filament\Resources\FacilityStatResource\Pages;
use App\Filament\Resources\FacilityStatResource\RelationManagers;
use App\Models\FacilityStat;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Forms\Components\TextInput;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;

class FacilityStatResource extends Resource
{
    protected static ?string $model = FacilityStat::class;

    protected static ?string $navigationIcon = 'heroicon-o-building-office';
    protected static ?string $navigationLabel = 'Statistik Fasilitas Madrasah';
    protected static ?string $modelLabel = 'Statistik Fasilitas Madrasah';
    protected static ?string $navigationGroup = 'Halaman Selayang Pandang';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('title')->label('Judul')->required(),
                TextInput::make('value')->label('Nilai')->numeric()->nullable(),
                TextInput::make('suffix')->label('Sufiks')->nullable(),
                TextInput::make('subtitle')->label('Subjudul')->nullable(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('title')
                    ->label('Judul'),
                TextColumn::make('value')
                    ->label('Nilai'),
                TextColumn::make('suffix')
                    ->label('Sufiks'),
                TextColumn::make('subtitle')
                    ->label('Subjudul'),
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
            'index' => Pages\ListFacilityStats::route('/'),
            'create' => Pages\CreateFacilityStat::route('/create'),
            'edit' => Pages\EditFacilityStat::route('/{record}/edit'),
        ];
    }
}
