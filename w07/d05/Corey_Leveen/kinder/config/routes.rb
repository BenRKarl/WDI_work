Rails.application.routes.draw do
  get '/kittens/random', to: 'kittens#index'
  post '/kittens/random', to: 'kittens#create'
  root 'kittens#index'
end
