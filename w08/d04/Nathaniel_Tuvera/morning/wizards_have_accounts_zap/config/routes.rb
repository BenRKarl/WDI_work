Rails.application.routes.draw do

  get '/login'      => 'sessions#new', as: 'login'  #can refer to as login_path
  post '/sessions'  => 'sessions#create', as: 'session'
  delete '/logout'  => 'sessions#destroy', as: 'logout'  #can refer to as logout_path

  get '/signup'     => 'wizards#new', as: 'signup'
  post '/wizards'   => 'wizards#create', as:'wizards' # for explicit and also for form partials

  get '/profile'    => 'wizards#profile', as: 'profile'

  root 'welcome#index'
end
