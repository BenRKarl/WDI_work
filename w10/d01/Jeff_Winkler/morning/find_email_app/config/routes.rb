Rails.application.routes.draw do

  root "emails#index"
  get '/emails/find' => 'emails#find'

end
