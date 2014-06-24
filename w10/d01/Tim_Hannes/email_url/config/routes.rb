Rails.application.routes.draw do

  resources :people, only: [:index, :create]
  root 'people#index'

end
