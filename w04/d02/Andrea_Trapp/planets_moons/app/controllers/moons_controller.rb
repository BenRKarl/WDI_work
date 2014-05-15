class MoonsController < ApplicationController

  def new
    @planet = Planet.find(params[:planet_id])  
    @moon = Moon.new(:planet=>@planet)   
    # Show me a form!!   
  end

  def create  
    planet = Planet.find(params[:planet_id])  
    moon = Moon.create( moon_params )
    planet.moons << moon
    redirect_to planet_path(planet)   
  end

  def edit
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.find(params[:id]) 
  end

  def update
    planet = Planet.find(params[:planet_id])  
    moon = Moon.find(params[:id])
    moon.update( moon_params )   
    redirect_to planet_path(planet) 
  end

  def destroy
    planet = Planet.find(params[:planet_id])
    Moon.delete(params[:id])
    redirect_to planet_path(planet) 
  end


  private

  def moon_params
    params.require(:moon).permit(:name, :planet_id)
  end

end