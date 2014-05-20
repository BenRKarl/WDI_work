class MoonsController < ApplicationController

  def index
    @planet = Planet.find(params[:planet_id])
    @moons = Moon.all
  end

  def new
     @moon = Moon.new
     @planet = Planet.find(params[:planet_id])
  end
  def create
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.create(moon_params)
    @planet.moons << @moon
    redirect_to "/planets/#{@planet.id}/moons/#{@moon.id}"
  end

  def edit
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.find(params[:id])
  end

  def show
    @moon = Moon.find(params[:id])
        @planet = Planet.find(params[:planet_id])
  end

  def update
    planet = Planet.find(params[:planet_id])
    moon = Moon.find(params[:id])
    moon.update(moon_params)
    redirect_to "/planets/#{planet.id}/moons/#{moon.id}"
  end

  def destroy
    planet = Planet.find(params[:planet_id])
    Moon.delete(params[:id])
    redirect_to "/planets/#{planet.id}/moons"
  end

private
  def moon_params
    params.permit(:name, :planet_id)
  end
end