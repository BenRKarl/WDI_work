class MoonsController < ApplicationController

  def new
    @planet = Planet.find(params[:planet_id])
    # show me a create form
  end

  def create  
    planet = Planet.find(params[:planet_id])  
    moon = Moon.create( moon_params )
    planet.moons << moon
  end

  def edit
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.find(params[:id]) 
  end

  def update
    moon = Moon.find(params[:id])
    moon.update( moon_params )    
  end

  private

  def moon_params
    params.require(:moon).permit(:name, :planet_id)
  end

end