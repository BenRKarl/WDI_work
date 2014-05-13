class PlanetsController < ApplicationController

#           planets GET    /planets(.:format)                          planets#index
  def index
    @planets = Planet.all
  end
#                   POST   /planets(.:format)                          planets#create
#        new_planet GET    /planets/new(.:format)                      planets#new
#       edit_planet GET    /planets/:id/edit(.:format)                 planets#edit
#            planet GET    /planets/:id(.:format)                      planets#show
#                   PATCH  /planets/:id(.:format)                      planets#update
#                   PUT    /planets/:id(.:format)                      planets#update
#                   DELETE /planets/:id(.:format)                      planets#destroy
end
