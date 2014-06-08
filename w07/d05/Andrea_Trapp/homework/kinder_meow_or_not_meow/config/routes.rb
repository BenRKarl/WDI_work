Rails.application.routes.draw do
  
  root to: 'kittens#index' 
  get 'kittens' => 'kittens#index'
  get 'kittens/random' => 'kittens#random'

end

