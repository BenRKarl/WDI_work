Rails.application.routes.draw do

  root to: 'kittens#index'

  post '/kittens' => 'kittens#create'


end
