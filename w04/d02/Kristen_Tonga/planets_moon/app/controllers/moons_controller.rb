class MoonsController < ApplicationController

  def index
    @moons= Moon.all
    redirect_to "/planets"
  end

  def new
    @planet = Planet.find(params[:planet_id])
  end

  def create
    @planet = Planet.find(params[:planet_id])
    moon = Moon.create(moon_paramas)
    planet.moons << moon
    redirect_to "/planets/#{planet_id}/moons/#{moon.id}"
  end

  def edit
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.find(params[:id])
  end

   def update
    new_planet_moon = Moon.find(params[:id])
    new_planet_moon.update(moon_paramas)
    redirect_to "/planets/#{planet_id}/moons/#{new_planet_moon.id}"
  end

  def destroy
    @planet = Planet.find(params[:planet_id])
    Moon.delete(params[:id])
    redirect_to "/planets/#{planet_id}/moonss/#{Moon.id}"
  end

  # def show
  #   @moon = Moon.find(params[:id])
  # end



  private


  def moon_params
    params.require(:moon).permit(:name)
  end


end
