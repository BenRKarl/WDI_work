Rails.application.routes.draw do
  get '/protos', :action => "index", :controller => "protos"

   get '/', :action => "welcome", :controller => "protos"

   get '/protos/:id', :action => "show", :controller => "protos"



end
