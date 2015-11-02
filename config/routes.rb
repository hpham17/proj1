Rails.application.routes.draw do
  root 'home#index'
  get 'pokemons/new' => 'pokemons#new'
  post 'pokemon/new' => 'pokemons#create', as: 'pokemons'
  patch 'pokemons/:id/damage' => 'pokemons#damage', as: 'damage'
  patch 'pokemons/:id/capture' => 'pokemons#capture', as: 'capture'
  patch 'pokemons/:id/heal' => 'pokemons#heal', as: 'heal'
  devise_for :trainers
  resources :trainers
end
