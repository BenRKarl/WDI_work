Rails.application.routes.draw do

get "/" => 'protos#welcome'

get "/protos" => 'protos#index'

get "/protos/:id" => 'protos#show'

end
