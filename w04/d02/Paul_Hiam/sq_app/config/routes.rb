Rails.application.routes.draw do

root 'squares#index'

get 'squares' => 'squares#index'

get 'squares/new' => 'squares#new'
post 'squares' => 'squares#create'

get 'squares/:id' => 'squares#show'

get 'squares/:id/edit' => 'squares#edit'
put 'squares/:id' => 'squares#update'
patch 'squares/:id' => 'squares#update' #allows for auto edit with form helpers
delete 'squares/:id' => 'squares#destroy' 

#or
#resources :squares
#creates all of reg routes

end
