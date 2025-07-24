<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ContactResource\Pages;
use App\Filament\Resources\ContactResource\RelationManagers;
use App\Models\Contact;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Components\TextInput;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;

class ContactResource extends Resource
{
    protected static ?string $model = Contact::class;

    protected static ?string $navigationIcon = 'heroicon-o-phone';

    protected static ?string $navigationLabel = 'Kontak Madrasah';

    public static function getPluralLabel(): string
    {
        return 'Kontak Madrasah';
    }

    protected static ?string $navigationGroup = 'Halaman Navigasi';


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('alamat')
                    ->label('Alamat')
                    ->required()
                    ->maxLength(200),
                TextInput::make('no_hp')
                    ->label('No WhatsApp')
                    ->required()
                    ->maxLength(200),
                TextInput::make('ket_1')
                    ->label('Jam Operasional 1')
                    ->required()
                    ->maxLength(200),
                TextInput::make('ket_2')
                    ->label('Jam Operasional 2')
                    ->required()
                    ->maxLength(200),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('alamat')
                    ->label('Alamat'),
                TextColumn::make('no_hp')
                    ->label('WhatsApp'),
                TextColumn::make('ket_1')
                    ->label('Jam Operasional 1'),
                TextColumn::make('ket_2')
                    ->label('Jam Operasional 2'),
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
            'index' => Pages\ListContacts::route('/'),
            'create' => Pages\CreateContact::route('/create'),
            'edit' => Pages\EditContact::route('/{record}/edit'),
        ];
    }
}
