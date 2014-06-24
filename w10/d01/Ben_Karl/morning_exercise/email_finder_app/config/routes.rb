Rails.application.routes.draw do

 resources :websites, only: [:index, :create]
 root to: 'welcome#index'

end
