Rails.application.routes.draw do
  get '/' => 'planets#index'
  resources :planets do
    resources :moons, except: [:index, :show]
  end
end
