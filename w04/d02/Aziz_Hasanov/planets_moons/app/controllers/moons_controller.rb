class MoonsController < ApplicationController
  def new
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.new
  end
  def create
    planet = Planet.find(params[:planet_id])
    moon = Moon.create(moon_params)
    # show_planet.moons << new_moon
    redirect_to "/planets/#{planet.id}"
  end
  def edit
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.find(params[:id])
  end
  def update
    moon = Moon.find(params[:id])
    moon.update(moon_params)
    redirect_to "/planets/#{moon.planet_id}"
  end
  def destroy
    @planet = Planet.find(params[:planet_id])
    moon = Moon.delete(params[:id])
    redirect_to "/planets/#{@planet.id}"
  end


  private
  def moon_params
    moon = params.require(:moon).permit(:name)
    moon['planet_id'] = params['planet_id']
    moon
  end
end
