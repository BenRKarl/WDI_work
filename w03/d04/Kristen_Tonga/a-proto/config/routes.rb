Rails.application.routes.draw do

  get '/protos', :action => "index", :controller => "protos"

  get '/protos/:name', :action => "show", :controller => "protos"

end


