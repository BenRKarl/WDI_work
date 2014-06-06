Rails.application.routes.draw do
  root to: 'card#index'
  get '/cards' => 'card#index'
end
