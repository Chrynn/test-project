<?php

namespace App\Filament\Pages;

use Filament\Actions\Action;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Form;
use Filament\Pages\Page;

class Test extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-document-text';
    protected static string $view = 'filament.pages.test';
    public ?array $data = [];

    public function mount(): void
    {
        $this->form->fill();
    }

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('carName')
                    ->options([
                        'audi' => 'audi',
                        'bmw' => 'bmw'
                    ])
                    ->native(false)
                    ->required(),
                TextInput::make('carType')
                    ->required()
                    ->alpha()
            ])
            ->columns()
            ->statePath('data');
    }

    protected function getFormActions(): array
    {
        return [
            Action::make('handleSubmit')
                ->label('Submit')
                ->submit('handleSubmit')
        ];
    }

    public function handleSubmit(): void
    {
        dd($this->data);
    }
}
