Rails.application.routes.draw do
  get '/celebs' => 'celebrities#index'
  get '/selfies' => 'selfies#index'
  get '/comments' => 'comments#index'

end
