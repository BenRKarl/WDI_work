Rails.application.routes.draw do

  get "/" => 'squares#index'
    #display a list of all squares

  get "squares" => 'squares#index'
    #display a list of all squares

  get "squares/new" => 'squares#new'

  post "squares" => 'squares#create'

  get "squares/:id" => 'squares#show'

end
