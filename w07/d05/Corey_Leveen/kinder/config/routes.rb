Rails.application.routes.draw do
  get '/kittens/random', to: 'kittens#index'
  root 'kittens#index'
end
