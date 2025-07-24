<?php

namespace App\Filament\Resources;

use App\Filament\Resources\TeacherResource\Pages;
use App\Filament\Resources\TeacherResource\RelationManagers;
use App\Models\Teacher;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Select;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ImageColumn;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class TeacherResource extends Resource
{
    protected static ?string $model = Teacher::class;

    protected static ?string $navigationIcon = 'heroicon-o-user';

    protected static ?string $navigationGroup = 'Halaman Selayang Pandang';

    protected static ?string $modelLabel = 'Data Guru dan Staf';

    protected static ?string $navigationLabel = 'Guru dan Staf';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('name')
                    ->label('Nama')
                    ->required(),
                TextInput::make('position')
                    ->label('Jabatan')
                    ->nullable()
                    ->placeholder('Contoh: Wali Kelas X / Pembina / Waka / Staf TU / Kepala'),
                TextInput::make('subject')
                    ->label('Mapel')
                    ->nullable()
                    ->placeholder('Mapel Yang Diampu (Kosongkan Untuk Staf)'),
                Select::make('category')
                    ->label('Kategori Bidang')
                    ->options([
                        'Umum' => 'Umum',
                        'Agama' => 'Agama',
                        'IPA' => 'IPA',
                        'IPS' => 'IPS',
                        'Bahasa' => 'Bahasa',
                        'BK' => 'BK',
                        'Staf Tata Usaha' => 'Staf Tata Usaha',
                    ])
                    ->required(),
                FileUpload::make('photo')
                    ->label('Foto')
                    ->image()
                    ->directory('uploads/guru_staf')
                    ->disk('public')
                    ->imageEditor()
                    ->imagePreviewHeight('150')
                    ->nullable(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('photo')
                ->label('Foto')
                ->disk('public')
                ->circular(),
                TextColumn::make('name')
                ->label('Nama'),
                TextColumn::make('position')
                ->label('Jabatan'),
                TextColumn::make('subject')
                ->label('Mapel'),
                TextColumn::make('category')
                ->label('Kategori'),
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
            'index' => Pages\ListTeachers::route('/'),
            'create' => Pages\CreateTeacher::route('/create'),
            'edit' => Pages\EditTeacher::route('/{record}/edit'),
        ];
    }
}
