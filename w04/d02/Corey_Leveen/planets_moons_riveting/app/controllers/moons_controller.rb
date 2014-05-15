class MoonsController < ApplicationController

  def new
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.new
  end

  def create
      @moon = Moon.create(moon_params )
      planet = Planet.find(params[:planet_id])
      planet.moons << @moon
      redirect_to "/planets/#{planet.id}"
  end

  def edit
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.find(params[:id])
  end

  def update
    moon = Moon.find(params[:id])
    moon.update(moon_params )
    redirect_to "/planets/#{planet.id}"
  end

  def destroy
    Moon.delete(params[:id])
    redirect_to "/planets"
  end

  private

  def moon_params 
    params.require(:moon).permit(:name, :planet_id)
  end

end
