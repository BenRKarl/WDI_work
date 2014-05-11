Rails.application.routes.draw do
  
get 'users' => 'users#index'


  root 'users#index'
  get 'users' => 'users#index'
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'
  get 'users/:id/edit' => 'users#edit'
  put 'users/:id' => 'users#update'
  get 'users/:id' => 'users#show'
  delete 'users/:id' => 'users#destroy'


# post 'users' => 'users#create'
# get 'users/new' => 'users#new'

# get 'users/:id' => 'users#show'

# get 'users/:id/edit' => 'users#edit'

# put 'users/:id' => 'users#update'

# delete 'users/:id' => 'users#destroy'

end
