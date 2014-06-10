Rails.application.routes.draw do
  get 'kittens/random' => 'kittens#random'
  post 'kittens' => 'kittens#create'


end
