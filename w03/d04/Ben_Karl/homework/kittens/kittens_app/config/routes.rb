Rails.application.routes.draw do

get "/" => 'kittens#index'

get "/kittens" => 'kittens#index'

end
