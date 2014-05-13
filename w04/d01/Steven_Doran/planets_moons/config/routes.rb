Rails.application.routes.draw do
  
  root 'planets#index'

  resources :planets do 
    resources :moon, except: [:show, :index]
  end
end
