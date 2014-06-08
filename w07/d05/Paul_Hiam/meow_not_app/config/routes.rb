Rails.application.routes.draw do
  root to: 'kittens#index'
  get '/' => 'kittens#index'
  get 'kittens' => 'kittens#index'
end
