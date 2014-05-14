class MoonsController < ApplicationController

#planets GET    /planets(.:format)   planets#index
def index
  @moons = Moon.all
end

#new_planet GET    /planets/new(.:format)  planets#new
def new
end

#PUT    /planets/:id(.:format)  planets#update
def update
  @planet = Planet.find(planet_params[:id])
  planet.update(planet_params)
  redirect_to "/planets/#{planet.id}"
end
