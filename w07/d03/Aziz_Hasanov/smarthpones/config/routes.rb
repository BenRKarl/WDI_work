Rails.application.routes.draw do
  root "smartphones#root"
  resources :smartphones
end
