Rails.application.routes.draw do
 #get '/protos', :action => "index", :controller => "protos"
 get '/protos', to: 'protos#index'
 get '/', to: 'protos#welcome'
 get "/protos/:id", to: 'protos#show'
end


