class MoonsController < ApplicationController

#   planet_moons GET    /planets/:planet_id/moons(.:format)          moons#index
#                  POST   /planets/:planet_id/moons(.:format)          moons#create
#  new_planet_moon GET    /planets/:planet_id/moons/new(.:format)      moons#new
# edit_planet_moon GET    /planets/:planet_id/moons/:id/edit(.:format) moons#edit
#      planet_moon GET    /planets/:planet_id/moons/:id(.:format)      moons#show
#                  PATCH  /planets/:planet_id/moons/:id(.:format)      moons#update
#                  PUT    /planets/:planet_id/moons/:id(.:format)      moons#updat

def index
  @moons = Moon.all
end

def create
  planet = Planet.find(params[:planet_id])
  new_moon = Moon.create(moon_params)
  planet.moons << new_moon

  redirect_to planet_path(planet)
end

def new
  @planet = Planet.find(params[:planet_id])
  @moon = Moon.new
end

def edit
  @planet = Planet.find(params[:planet_id])
  @moon = Moon.find(params[:id])

  
end

def show
  @moon = Moon.find(params[:id])
end

def update
  @planet = Planet.find(params[:planet_id])
  @moon = Moon.find(params[:id])
  @moon.update(moon_params)
  redirect_to planet_path(@planet)
end

def destroy
  @planet = Planet.find(params[:planet_id])
  Moon.delete(params[:id])

  redirect_to planet_path(@planet)
end

private

def moon_params
  params.require(:moon).permit(:name, :planet_id)
end

end