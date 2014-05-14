Rails.application.routes.draw do

  root 'protos#index'
  
  resources :protos do 
  end

end
