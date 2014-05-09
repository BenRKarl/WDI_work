Rails.application.routes.draw do
  get '/', :action => "welcome", :controller => "protos"
  get '/protos', :action => "index", :controller => "protos"
  #get '/protos', :to => 'protos#index'
  #get '/protos' => 'protos#index'
  get '/protos/:id', :action => "show", :controller => "protos"
end
