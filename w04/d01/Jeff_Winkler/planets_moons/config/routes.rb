Rails.application.routes.draw do

  resources :planets do
    resources :moon, except: [:show, :index]
  end



end
