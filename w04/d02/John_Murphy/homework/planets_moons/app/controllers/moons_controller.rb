class MoonsController < ApplicationController


  #  new_planet_moon GET    /planets/:planet_id/moons/new(.:format)      moons#new
  def new
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.new
  end
  #     planet_moons POST   /planets/:planet_id/moons(.:format)          moons#create
  def create
    planet = Planet.find(params[:planet_id])
    planet.moons << Moon.create(moon_params)
    redirect_to planet_path(planet)
  end
  # edit_planet_moon GET    /planets/:planet_id/moons/:id/edit(.:format) moons#edit
  def edit
    @moon = Moon.find(params[:id])
    @planet = Planet.find(params[:planet_id])
  end
  #      planet_moon PATCH  /planets/:planet_id/moons/:id(.:format)      moons#update
  #                  PUT    /planets/:planet_id/moons/:id(.:format)      moons#update
  def update
    moon = Moon.find(params[:id])

    moon.update(moon_params)
    planet = Planet.find(params[:planet_id])
    redirect_to planet_path(planet)
  end
  #                  DELETE /planets/:planet_id/moons/:id(.:format)      moons#destroy
  def destroy
    Moon.destroy(params[:id])
    redirect_to planet_path(params[:planet_id])
  end

private
  def moon_params
    params.require(:moon).permit(:name)
  end
end


