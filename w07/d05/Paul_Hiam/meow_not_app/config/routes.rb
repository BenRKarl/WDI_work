Rails.application.routes.draw do
  root to: 'kittens#index'
  
  get 'kittens' => 'kittens#index'
  get 'random' => 'kittens#random'
end
