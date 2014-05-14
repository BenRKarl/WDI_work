Rails.application.routes.draw do

  get '/' => 'squares#index'
  get '/squares' => 'squares#index'
  get '/squares' => 'squares#new'
  post '/squares' => 'squares#create'
  get '/squares' => 'squares#show'
  get '/squares/:id' => 'squares#edit'
  put '/squares/:id' => 'squares#update'
  delete '/squares/:id' => 'squares#destroy'

end
