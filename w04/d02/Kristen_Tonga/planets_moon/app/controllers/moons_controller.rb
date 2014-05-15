class MoonsController < ApplicationController

  def index
    @moons= Moon.all
  end

  def new
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.new
  end

  def create
    planet = Planet.find(params[:planet_id])
    moon = Moon.create(moon_params)
    planet.moons << moon
    redirect_to "planet_path(planet)"
  end

  def edit
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.find(params[:id])
  end

  def show
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.find(params[:id])
  end

  def update
    planet = Planet.find(params[:planet_id])
    new_planet_moon = Moon.find(params[:id])
    new_planet_moon.update(moon_params)
    redirect_to "moon_path(moon)"
  end

  def destroy
    planet = Planet.find(params[:planet_id])
    Moon.delete(params[:id])
    redirect_to "moons_path"
  end

  # def show
  #   @moon = Moon.find(params[:id])
  # end



  private


  def moon_params
    params.require(:moon).permit(:name)
  end


end
