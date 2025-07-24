<?php

namespace App\Filament\Resources;

use App\Filament\Resources\TimelineResource\Pages;
use App\Filament\Resources\TimelineResource\RelationManagers;
use App\Models\Timeline;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Select;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class TimelineResource extends Resource
{
    protected static ?string $model = Timeline::class;

    protected static ?string $navigationIcon = 'heroicon-o-clock';

    protected static ?string $navigationLabel = 'Linimasa';

        public static function getPluralLabel(): string
    {
        return 'Linimasa';
    }

    protected static ?string $navigationGroup = 'Halaman Selayang Pandang';

    public static function form(Form $form): Form
    {
        return $form->schema([
            Select::make('profile_id')
                ->label('Profil Madrasah')
                ->relationship('profile', 'judul_besar')
                ->required()
                ->searchable()
                ->preload(),

            TextInput::make('tahun')
                ->label('Tahun')
                ->required()
                ->numeric()
                ->minValue(1900)
                ->maxValue(date('Y') + 10),

            Textarea::make('keterangan')
                ->label('Keterangan')
                ->required()
                ->columnSpanFull(),
        ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('profile.judul_besar')->label('Profil'),
                TextColumn::make('tahun')->sortable()->searchable(),
                TextColumn::make('keterangan')->limit(50)->wrap(),
                TextColumn::make('updated_at')->label('Diperbarui')->dateTime('d M Y, H:i'),
            ])
            ->defaultSort('tahun', 'asc')
            ->paginated([10, 25, 50])
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
            'index' => Pages\ListTimelines::route('/'),
            'create' => Pages\CreateTimeline::route('/create'),
            'edit' => Pages\EditTimeline::route('/{record}/edit'),
        ];
    }
}
