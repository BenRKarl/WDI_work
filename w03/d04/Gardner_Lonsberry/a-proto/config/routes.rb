Rails.application.routes.draw do

# get '/' => 'protos#welcome'
# end

root :to => 'protos#welcome'


get '/protos/', to: 'protos#index'

get 'protos/:id' => 'protos#show'
end



