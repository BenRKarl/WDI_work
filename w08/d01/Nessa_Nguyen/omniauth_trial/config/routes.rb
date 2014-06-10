Rails.application.routes.draw do
  root 'sessions#index'
  post 'sessions' => 'sessions#create'
  get 'auth/:provider' => 'sessions#authorize'
  get 'auth/:provider/callback' => 'sessions#log'
end
