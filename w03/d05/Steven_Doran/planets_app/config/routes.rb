Rails.application.routes.draw do

  root 'planets#index' 

# display a list of all planets
get 'planets' => 'planets#index' 

# return an HTML form for creating a new planet
get 'planets/new' => 'planets#new' 

# create a new planet
post 'planets' => 'planets#create' 

# display a specific planet
get 'planets/:id' => 'planets#show' 

# return an HTML form for editing a planet
get 'planets/:id/edit' => 'planets#edit' 

# updates a specific planet
put 'planets/:id' => 'planets#update' 

# deletes a specific planet
delete 'planets/:id' => 'planets#destroy' 

end
