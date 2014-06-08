Rails.application.routes.draw do

  root 'kittens#index'
  get 'kittens/random' => 'kittens#index'
  post 'kittens' => 'kittens#create'


end
