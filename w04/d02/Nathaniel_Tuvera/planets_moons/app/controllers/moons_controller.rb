class MoonsController < ApplicationController

  # def index
  #   @moons = Moon.all
  # end

  def create
    moon = Moon.create(moon_params)
    planet = Planet.find(params[:planet_id])
    redirect_to "/planets/#{planet.id}"
  end

  def new
    @planet = Planet.find(params[:planet_id])

  end

  def edit
    @moon = Moon.find(params[:id])
    @planet = Planet.find(params[:planet_id])
  end

  def show
    @moon = Moon.find(params[:id])
  end

  def update
    moon = Moon.find(params[:planet_id])
    planet = Planet.find(params[:id])
    moon.update(moon_params)
    redirect_to "/planets/#{planet.id}"
  end

  def destroy
    planet = Planet.find(params[:planet_id])
    Moon.delete(params[:id])
    redirect_to "/planets/#{planet.id}"
  end

private
  def moon_params
    params.require(:moon).permit(:name)
  end
end
