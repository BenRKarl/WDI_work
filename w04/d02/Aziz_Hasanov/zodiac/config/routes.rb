Rails.application.routes.draw do
  # root 'protos#index'
  get '/' => 'protos#index'
end
