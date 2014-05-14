class MoonsController < ApplicationController

def new
  @planet_id = params.fetch(:planet_id)
  @planet = Planet.find(@planet_id)
end

def create
  moon = Moon.create(moon_params)
  planet = Planet.find(params[:planet_id])
  planet.moons << moon
  redirect_to "/planets/#{params[:planet_id]}"
end

def edit
  @planet = Planet.find(params.fetch[:planet_id])
  @moon = Moon.find(params.fetch[:id])
end

def update
  moon = Moon.find(params.fetch[:id])
  moon.update(moon_params)
  redirect_to "/planets/#{params.fetch(planet.id)}"
end

def destroy
  Moon.delete(params.fetch[:id])
  redirect_to "/planets/#{params.fetch(:planet_id)}"
end


private

def moon_params
  params.require(:moon).permit(:name, :planet_id)
end

end
