class MoonsController < ApplicationController

                 
# b   URI Pattern                                 Controller#Action
# planet_moon_index POST   /planets/:planet_id/moon(.:format)          moon#create
#   new_planet_moon GET    /planets/:planet_id/moon/new(.:format)      moon#new
#  edit_planet_moon GET    /planets/:planet_id/moon/:id/edit(.:format) moon#edit
#       planet_moon PATCH  /planets/:planet_id/moon/:id(.:format)      moon#update
#                   PUT    /planets/:planet_id/moon/:id(.:format)      moon#update
#                   DELETE /planets/:planet_id/moon/:id(.:format)      moon#destroy


  def index
    @moons = Moon.all
  end

  def create
    new_moon = Moon.create(moon_params)
    planet = Planet.find(params[:planet_id])
    planet.moons << new_moon

    redirect_to "/planets/#{ planet.id }"
  end

  def new
    @planet = Planet.find(params[:planet_id])
end

  def edit
    @moon = moon.find(params[:id])
    @planet = Planet.find(params[:planet_id])
   end

  def show
    @moon = moon.find(params[:id])
  end

  def update
    edit_moon = moon.find(params[:id])
    edit_moon.update(moon_params)
    planet = Planet.find(params[:planet_id])

    redirect_to "/planets/#{ planet.id }/moons/#{ edit_moon.id }"
  end

  def destroy

    Moon.delete(params[:id])
    planet = Planet.find(params[:planet_id])

    redirect_to "/planets/#{ planet.id }"
  end

private

def moon_params
  params.require(:moon).permit(:name, :image_url, :diameter, :mass, :life)
end




end