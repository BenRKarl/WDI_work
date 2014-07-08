Rails.application.routes.draw do
get '/authors/' => 'authors#index'
get '/authors/:id' => 'authors#destroy'
end
