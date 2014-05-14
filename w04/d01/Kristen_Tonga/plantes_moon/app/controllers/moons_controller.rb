class Moons_Controller < ApplicationController

  # def index
  #   @moons= Moon.all
  #   #redirect_to "/planets"
  # end

  def new
    @planet = Planet.find(params[:planet_id])
  end

  def create
    moon = Moon.create(moon_paramas)
    @planet = Planet.find(params[:planet_id])
    planet.moons << moon

    redirect_to "/planets/#{@planet.id}"
  end

  def edit
    @moon = Moon.find(params[:id])
        @planet = Planet.find(params[:planet_id])
  end

   def update
    new_planet_moon = Moon.find(params[:id])
    new_planet_moon.update(moon_paramas)
    @planet = Planet.find(params[:planet_id])
    redirect_to "/planets/#{@planet.id}/moons/#{new_planet_moon.id}"
  end

  def destroy
    Moon.delete(params[:id])
    @planet = Planet.find(params[:planet_id])
    redirect_to "/planets/#{@planet.id}"
  end

  # def show
  #   @moon = Moon.find(params[:id])
  # end



  private


  def moon_params
    params.require(:moon).permit(:name)
  end


end
