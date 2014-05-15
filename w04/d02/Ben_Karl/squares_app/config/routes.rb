Rails.application.routes.draw do

  get "/" => 'squares#index'
    #display a list of all squares

  get "squares" => 'squares#index'
    #display a list of all squares

  get "squares/new" => 'squares#new'
    #hosts form to submit information for a new square

  post "squares" => 'squares#create'
    #generates post request and creates new square in database

  get "squares/:id" => 'squares#show'

  get "squares/:id/edit" => 'squares#edit'

  put "squares/:id" => "squares#update"

  delete 'squares/:id' => 'squares#destroy'

end
