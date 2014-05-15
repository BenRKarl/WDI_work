class MoonsController < ApplicationController

  def create
    @planet = Planet.find(params[:planet_id])
    new_moon = Moon.create(moon_params)
    @planet.moons << new_moon
    redirect_to planet_path(@planet)
  end

  def new
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.new(:planet => @planet)
  end

  def edit
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.find(params[:id])
  end


  def update
    planet = Planet.find(params[:planet_id])
    moon = Moon.find(params[:id])
    moon.update(moon_params)
    redirect_to planet_path(planet)
  end

  def destroy
    planet = Planet.find(params[:planet_id])
    Moon.delete(params[:id])
    redirect_to planets_path
  end

  private

  def moon_params
    params.require(:moon).permit(:name)
  end

end 