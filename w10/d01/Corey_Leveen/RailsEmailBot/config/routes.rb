Rails.application.routes.draw do

resources :emails, only: [:index, :create]
root to: 'emails#index'
end
