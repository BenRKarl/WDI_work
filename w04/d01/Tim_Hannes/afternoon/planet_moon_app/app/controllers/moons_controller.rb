class CowsController < ApplicationController

#                  POST   /planets/:planet_id/moons(.:format)          moons#create
#  new_planet_moon GET    /planets/:planet_id/moons/new(.:format)      moons#new
# edit_planet_moon GET    /planets/:planet_id/moons/:id/edit(.:format) moons#edit
#                  PUT    /planets/:planet_id/moons/:id(.:format)      moons#update
#                  DELETE /planets/:planet_id/moons/:id(.:format)      moons#destroy

def create
  planet = Planet.find(params[:planet_id])
  moon = Moon.create(moon_params)
  redirect_to "/planets/#{planet.id}/moons/#{moon.id}"
end

def new
  @planet = Planet.find(params[:planet_id])
end

def edit
  @planet = Planet.find(params[:planet_id])
  @moon = Moon.find(params[:id])
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
  params.require(:moon).permit(:name, :planet_id)
end

end
