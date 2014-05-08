Rails.application.routes.draw do
  get '/protos', :action => "index", :controller => "protos"

get '/protos' => 'protos#index'
end
