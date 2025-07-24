<?php

namespace App\Filament\Resources;

use App\Filament\Resources\EventResource\Pages;
use App\Filament\Resources\EventResource\RelationManagers;
use App\Models\Event;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\RichEditor;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Forms\Components\Tabs;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class EventResource extends Resource
{
    protected static ?string $model = Event::class;

    protected static ?string $navigationIcon = 'heroicon-o-calendar-date-range';
    protected static ?string $navigationLabel = 'Kegiatan Madrasah';

    public static function getPluralLabel(): string
    {
        return 'Berita';
    }

    protected static ?string $navigationGroup = 'Halaman Navigasi';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Tabs::make('EventTabs')
                    ->tabs([
                        Tabs\Tab::make('Data Event')
                            ->schema([
                                FileUpload::make('image')
                                    ->label('Foto Event')
                                    ->directory('uploads/events')
                                    ->image()
                                    ->disk('public')
                                    ->imagePreviewHeight('150')
                                    ->nullable(),
                                TextInput::make('title')
                                    ->label('Judul Event')
                                    ->required(),
                                DatePicker::make('event_date')
                                    ->label('Tanggal Event')
                                    ->required(),
                                TextInput::make('event_time')
                                    ->label('Jam Event')
                                    ->nullable(),
                                TextInput::make('location')
                                    ->label('Lokasi')
                                    ->required(),
                                RichEditor::make('content')
                                    ->label('Konten Event')
                                    ->required(),
                            ]),
                        Tabs\Tab::make('Jadwal Event')
                            ->schema([
                                Repeater::make('schedule')
                                    ->label('Jadwal Event (opsional)')
                                    ->schema([
                                        TextInput::make('time')->label('Tanggal Event')->nullable(),
                                        TextInput::make('title_schedule')->label('Judul Jadwal')->nullable(),
                                        Textarea::make('description')->label('Deskripsi')->nullable(),
                                    ])
                                    ->columns(1)
                                    ->minItems(0)
                                    ->maxItems(10)
                                    ->nullable(),
                            ]),
                    ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('image')
                    ->label('Foto')
                    ->width(80)
                    ->height(60),
                TextColumn::make('title')
                    ->label('Judul Event')
                    ->searchable()
                    ->limit(30),
                TextColumn::make('event_date')
                    ->label('Tanggal')
                    ->date('d M Y')
                    ->sortable(),
                TextColumn::make('event_time')
                    ->label('Jam'),
                TextColumn::make('location')
                    ->label('Lokasi')
                    ->limit(20),
                TextColumn::make('created_at')
                    ->label('Dibuat')
                    ->dateTime('d M Y'),
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
            'index' => Pages\ListEvents::route('/'),
            'create' => Pages\CreateEvent::route('/create'),
            'edit' => Pages\EditEvent::route('/{record}/edit'),
        ];
    }
}
