Rails.application.routes.draw do
root  'welcome#index'
get  'emails' => 'welcome#index'
post 'emails' => 'welcome#create'
end
