class PlanetsController < ApplicationController

# HTTP Verb       PATH         CONTROLLER#ACTION                 BEHAVIOR

#   GET         /planets         planets#index        display a list of all planets
  def index
    @planets = Planet.all
  end

#   GET         /planets/new      planets#new         return an HTML form for creating a new planet 
  def new
    @planet = Planet.create
    @planets = Planet.all
#show a form
  end

#   POST        /planets          planet#create       create a new planet
  def create
    planet = Planet.create(params.require(:planets).permit(:planet_name, :planet_url, :diameter, :mass, :life))

    # @planet       = Planet.create
    # @planets      = Planet.all
    # new_planet    = Planet.create(params.require(:planets).permit(:planet_name, :planet_url, :diameter, :mass, :life) ) 
    # @new_planet   = new_planet
    # @planet_name  = params[:planet_name]
    # @planet_url   = params[:planet_url]
    # @diameter     = params[:diameter] 
    # @mass         = params[:mass]
    # @life         = params[:life]
    redirect_to "/planets/#{ planet.id} "
  end
  
  def show
  @planet = Planet.find(params[:id])
  end

  def edit
  @planet = Planet.find(params[:id])
  
  end

  def destroy
  planet = Planet.find(params[:id])
  planet.delete
  redirect_to '/planets'
  end


def diameter_id=(num)
  #if we got a string, strip commas out of it
  num.gsub!(',','') if num.is_a?(String)
  #then call to_i and store the value as usual.
  self[:planet_id] = num.to_i

end

end

