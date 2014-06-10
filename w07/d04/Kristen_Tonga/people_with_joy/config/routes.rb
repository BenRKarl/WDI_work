
Rails.application.routes.draw do

  root 'welcome#root'
  resources :people
end

