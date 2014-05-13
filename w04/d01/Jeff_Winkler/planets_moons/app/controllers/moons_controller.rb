
class MoonsController < ApplicationController



# edit_planet_moon GET    /planets/:planet_id/moons/:id/edit(.:format) moons#edit
#      planet_moon PATCH  /planets/:planet_id/moons/:id(.:format)      moons#update
#                  PUT    /planets/:planet_id/moons/:id(.:format)      moons#update
#                  DELETE /planets/:planet_id/moons/:id(.:format)      moons#destroy


#  new_planet_moon GET    /planets/:planet_id/moons/new(.:format)      moons#new
  def new
    @planet_id = params.fetch(:planet_id)
  end

#     planet_moons POST   /planets/:planet_id/moons(.:format)          moons#create
  def create
    moon = Moon.create(moon_params)
    planet = Planet.find(params[:planet_id])
    planet.moons << moon
    redirect_to "/planets/#{params[:planet_id]}"
  end

  private

  def moon_params
    params.require(:moon).permit(:name)
  end

end




