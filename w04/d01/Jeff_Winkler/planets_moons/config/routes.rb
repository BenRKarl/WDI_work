Rails.application.routes.draw do

  get '/', to: 'planets#index'
  resources :planets do
    resources :moons, except: [:show, :index]
  end



end
