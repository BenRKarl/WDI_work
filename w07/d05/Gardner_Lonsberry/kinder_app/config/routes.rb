Rails.application.routes.draw do
  
   get '/' => 'kittens#index'
   get '/update' => 'kittens#update'
end
