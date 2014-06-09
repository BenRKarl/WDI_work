Rails.application.routes.draw do
  root 'kittens#random'
  get 'kittens/random' => 'kittens#random'
  post 'kittens'       => 'kittens#create'
end
