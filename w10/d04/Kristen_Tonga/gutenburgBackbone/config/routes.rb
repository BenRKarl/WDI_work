Rails.application.routes.draw do

  get '/authors' => 'authors#index'
  get '/authors/id' => 'books#index'

end
