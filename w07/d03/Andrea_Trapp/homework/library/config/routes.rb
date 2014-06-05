Rails.application.routes.draw do 

  root "welcome#index"  

  resources :books
  # resources :books, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
