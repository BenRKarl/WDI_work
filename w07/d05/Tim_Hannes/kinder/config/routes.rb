Rails.application.routes.draw do

  root to: 'kittens#random'
  get 'kittens/random' => 'kittens#random'
end

# root to: 'kittens#index'
# get 'kittens' => 'kittens#index'
