
Rails.application.routes.draw do

  root 'welcome#index'
  resources :people, :only => [:index, :show, :edit, :update, :destroy, :new, :create]


end
