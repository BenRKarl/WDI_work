Rails.application.routes.draw do
#  get '/protos', :action => "index", :controller => "protos"

  get '/protos' =>      'protos#index'
  get '/' =>            'protos#welcome'
  get '/protos/:id' =>   'protos#show'

   # get '/', :action => "welcome", :controller => "protos"

   # get '/protos/:id', :action => "show", :controller => "protos"



end
