Rails.application.routes.draw do
  root 'sites#index'
  get 'sites' => 'sites#index'
  post 'sites' => 'sites#create'
  #resources :sites
end
