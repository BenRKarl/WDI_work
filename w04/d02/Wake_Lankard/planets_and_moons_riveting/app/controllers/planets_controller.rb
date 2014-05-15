class PlanetsController < ApplicationController


#           DELETE /planets/:planet_id/moons/:id(.:format)      moons#destroy
#          planets GET    /planets(.:format)                           planets#index
#                  POST   /planets(.:format)                           planets#create
#       new_planet GET    /planets/new(.:format)                       planets#new
#      edit_planet GET    /planets/:id/edit(.:format)                  planets#edit
#           planet GET    /planets/:id(.:format)                       planets#show
#                  PATCH  /planets/:id(.:format)                       planets#update
#                  PUT    /planets/:id(.:format)                       planets#update
#                  DELETE /planets/:id(.:format)                       planets#destroy
# end

def index
  @planets = Planet.all 
end

def create
  new_planet = Planet.create(planet_params)

  redirect_to planet_path(new_planet)
end

def new
  @planet = Planet.new
end

def edit
  @planet = Planet.find(params[:id])
end

def show
  @planet = Planet.find(params[:id])
end

def update
  edit_planet = Planet.find(params[:id])
  edit_planet.update(planet_params)

  redirect_to planet_path(edit_planet)
end

def destroy
  Planet.delete(params[:id])

  redirect_to planets_path
end

def planet_params
  params.require(:planet).permit(:name, :image_url, :mass, :diameter, :life)
end
end