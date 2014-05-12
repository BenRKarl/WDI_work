Rails.application.routes.draw do
  root 'movies#index'
  resources :movies, only: [:index]
  get '/movies/search', to: 'movies#search'
end
