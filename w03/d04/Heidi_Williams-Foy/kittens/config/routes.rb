Rails.application.routes.draw do

  get '/kittens', to: 'kittens#index'
  get '/', to: 'kittens#index'

end