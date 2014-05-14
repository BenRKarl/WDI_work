Rails.application.routes.draw do

get '/' => 'planets#index'

 resources :planets do
    resources :moons, except: [:show, :index]
end

end
