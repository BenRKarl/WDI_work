Rails.application.routes.draw do
  get '/kittens' => 'kittens#index'
  get '/' => 'kittens#index'


end
