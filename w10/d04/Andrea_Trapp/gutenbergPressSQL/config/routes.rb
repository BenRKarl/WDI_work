Rails.application.routes.draw do

  # namespace :apiv01 do #v01 is Version 01
  #   get '/authors' => 'authors#index'
  # end

  get '/authors' => 'authors#index'
  get '/authors/:author_id/books' => 'books#index' # Connection to Backbone 
end
