Rails.application.routes.draw do
  root "kittens#index"
  get 'kittens/random' => 'kittens#random'
  post 'kittens' => 'kittens#create'
end
