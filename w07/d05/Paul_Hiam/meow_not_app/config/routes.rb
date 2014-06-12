Rails.application.routes.draw do
  root to: 'kittens#index'
  resources :kittens, only: [:index, :create]
  get 'kittens' => 'kittens#index'
  get '/random' => 'kittens#index', as: 'random'
end
