Rails.application.routes.draw do
  root to: 'quotes#index'
  get 'quotes' => 'quotes#index'
end