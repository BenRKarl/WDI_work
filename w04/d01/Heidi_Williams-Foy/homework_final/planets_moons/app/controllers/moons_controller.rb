class MoonsController < ApplicationController

#planets GET    /planets(.:format)   planets#index
def index
  @moons = Moon.all
end

#POST   /planets(.:format)  planets#create
def create
	@planet = Planet.create(planet_params)
	redirect_to "/planets/#{planet.id}"
end

#new_planet GET    /planets/new(.:format)  planets#new
def new
end

#edit_planet GET    /planets/:id/edit(.:format)  planets#edit
def edit
	@planet = Planet.find(params[:id])
end

 #planet GET    /planets/:id(.:format)  planets#show
 def show
 	@planet = Planet.find(params[:id])
 end

#PUT    /planets/:id(.:format)  planets#update
def update
  @planet = Planet.find(planet_params[:id])
  planet.update(planet_params)
  redirect_to "/planets/#{planet.id}"
end

#DELETE /planets/:id(.:format)  planets#destroy
def destroy
	planet.delete(params[:id])
	planet.update(farmer.params)
	redirect_to "/planets"
end

private
   def planet_params
    params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
   end
end
GET    /planets/:planet_id/moons(.:format)          moons#index
                 POST   /planets/:planet_id/moons(.:format)          moons#create
 new_planet_moon GET    /planets/:planet_id/moons/new(.:format)      moons#new
edit_planet_moon GET    /planets/:planet_id/moons/:id/edit(.:format) moons#edit
     planet_moon GET    /planets/:planet_id/moons/:id(.:format)      moons#show
                 PATCH  /planets/:planet_id/moons/:id(.:format)      moons#update
                 PUT    /planets/:planet_id/moons/:id(.:format)      moons#update
                 DELETE /planets/:planet_id/moons/:id(.:format)      moons#destroy