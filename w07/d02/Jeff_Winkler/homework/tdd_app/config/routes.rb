Rails.application.routes.draw do

  resources :people, :only => [:index, :show, :edit, :update, :destroy, :new, :create]


end
