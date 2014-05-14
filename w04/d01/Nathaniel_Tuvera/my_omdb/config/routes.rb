Rails.application.routes.draw do
  root 'movies#index'
  resources :movies, only: [:index]
  get '/movies/search' => 'movies#search'
  get '/movies/:year/:title' => 'movies#show'
end
