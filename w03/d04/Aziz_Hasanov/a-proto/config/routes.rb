Rails.application.routes.draw do
	get '/', :action => "main", :controller => "protos"
  get '/protos', :action => "index", :controller => "protos"
  get '/protos/:id', :action => "show", :controller => "protos"
  # get '/protos' => 'protos#index' another, simpler way
  #:action => "index", :controller => "protos"
end
