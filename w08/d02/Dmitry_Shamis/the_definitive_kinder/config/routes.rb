Rails.application.routes.draw do
  root 'kittens#index'
  post '/kittens' => 'kittens#create'
  get '/kittens' => 'kittens#index'
end
