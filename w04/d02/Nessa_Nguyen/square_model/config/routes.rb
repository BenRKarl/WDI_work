Rails.application.routes.draw do
  root 'squares#index'

#  get 'squares' => 'squares#index'
#  get 'squares/new' => 'squares#new'
#  post 'squares' => 'squares#create'
#  get 'squares/:id' => 'squares#show', as: 'square' #writes square_path method
#  get 'squares/:id/edit' => 'squares#edit'
#  put 'squares/:id' => 'squares#update'
#  patch 'squares/:id' => 'squares#update'
#  delete 'squares/:id/destroy' => 'squares#destroy'

  resources :squares
end
