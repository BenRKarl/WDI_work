Rails.application.routes.draw do

  resources :planets do 
    resources :moons, except: [:show, :index]
  end
  
  # get 'planets/:planet_id/moons/new' => 'moons#new'
  # post 'planets/:planet_id/moons' => 'moons#create' 
  # get 'planets/:planet_id/moons/:id/edit' => 'moons#edit'
  # put 'planets/:planet_id/moons/:i' => 'moons#update'
  # delete 'planets/:planet_id/moons/:id' => 'moons#destroy'

  # get 'planets' => 'planets#index'
  # get 'planets/new' => 'planets#new'
  # post 'planets' => 'planets#create'
  # get 'planets/:id' => 'planets#show'
  # get 'planets/:id/edit' => 'planets#edit'
  # put 'planets/:id' => 'planets#update'
  # delete 'planets/:id' => 'planets#destroy'

end
