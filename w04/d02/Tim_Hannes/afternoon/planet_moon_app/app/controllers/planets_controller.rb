class PlanetsController < ApplicationController

#     planets GET    /planets(.:format)             planets#index
def index
  @planets = Planet.all
end

#  new_planet GET    /planets/new(.:format)         planets#new
def new
end

#             POST   /planets(.:format)             planets#create
def create
  planet = Planet.create(planet_params)
  redirect_to "/planets/#{planet.id}"
end

#      planet GET    /planets/:id(.:format)         planets#show
def show
  @planet = Planet.find(params[:id])
end

# edit_planet GET    /planets/:id/edit(.:format)    planets#edit
def edit
  @planet = Planet.find(params[:id])
end

#             PATCH  /planets/:id(.:format)         planets#update
def update
  planet = Planet.find(params[:id])
  planet.update(planet_params)
  redirect_to "/planets/"
end
#             PUT    /planets/:id(.:format)         planets#update
#             DELETE /planets/:id(.:format)         planets#destroy
def destroy
 @planet = Planet.find(params[:id])
 @planet.destroy

  redirect_to planets_path
end


private

def planet_params
  params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
end


end
