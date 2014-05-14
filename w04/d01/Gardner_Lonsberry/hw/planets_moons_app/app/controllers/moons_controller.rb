class MoonsController < ApplicationController
  

  def index
    @moons = Moon.all
  end

  def new
    @planet = Planet.find(params[:planet_id])
  end

  def create
    planet = Planet.find(params[:planet_id])
    planet.moons << Moon.create(moon_params)
    planet.moons << new_moon
    redirect_to "/planets/#{moon.id}"
  end
  
  def edit
    @moon = Moon.find(params[:id])
    @planet = Planet.find(params[:planet_id])
  end

  def show
    @moon = moon.find(params[:id])
  end

  def update
     edit_moon = Moon.find(params[:id])
     edit_moon.update(moon_params)
     redirect_to "/planets/##planet.id}/moons/#{edit_moon.id}"
  end

  def destroy
    Moon.delete(params[:id])
    planet = Planet.find(params[:planet_id])
    redirect_to "/planets/#{planet.id}"
  end

  private
    def moon_params
      params.require(:moon).permit(:name, :planet_id)
    end
  end
end