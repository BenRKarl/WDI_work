Rails.application.routes.draw do

  get '/', to: 'planets#index'
  resources :planets do
    resources :moon, except: [:show, :index]
  end



end
