Rails.application.routes.draw do

get '/' => 'welcome#index'

resources :students, :houses

end
