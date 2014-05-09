Rails.application.routes.draw do
  get '/', :action => "index", :controller => "kittens"
  get '/kittens', :action => "index", :controller => "kittens"
  get '/kittens/new', :action => "new", :controller => "kittens"
  post '/kittens', :action => "save", :controller => "kittens"
end
