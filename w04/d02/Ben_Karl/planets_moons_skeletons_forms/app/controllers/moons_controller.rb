class MoonsController < ApplicationController

# No index for Moons

# new
def new
  @planet = Planet.find(params[:planet_id])
  @moon = Moon.new
end

# create
def create
  @planet = Planet.find(params[:planet_id])
  moon = Moon.create(moon_params)
  @planet.moons << moon
  redirect_to planet_path(@planet)
end

# No show for Moons

# edit
def edit
  @planet = Planet.find(params[:planet_id])
  @moon = @planet.moons.find(params[:id])
end

# update
def update
  planet = Planet.find(params[:planet_id])
  moon = planet.moons.find(params[:id])
  moon.update(moon_params)
  redirect_to planet_path(planet)
end

# delete
def destroy
  planet = Planet.find(params[:planet_id])
  moon = planet.moons.find(params[:id])
  moon.delete
  redirect_to planet_path(planet)
end

private

def moon_params
  params.require(:moon).permit(:name)
end

end
