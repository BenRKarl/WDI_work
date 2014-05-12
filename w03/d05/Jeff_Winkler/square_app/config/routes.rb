Rails.application.routes.draw do

  root 'squares#index'
  get 'squares' => 'squares#index'
  get 'squares/new' => 'squares#new'
  post 'squares' => 'squares#create'
  get 'squares/:id/edit' => 'squares#edit'
  put 'squares/:id' => 'squares#update'
  get 'squares/:id' => 'squares#show'
  delete 'squares/:id' => 'squares#destroy'



end
