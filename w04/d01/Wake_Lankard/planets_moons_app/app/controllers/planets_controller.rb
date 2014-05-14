class PlanetsController < ApplicationController

 
 #          planets GET    /planets(.:format)                          planets#index
 #                  POST   /planets(.:format)                          planets#create
 #       new_planet GET    /planets/new(.:format)                      planets#new
 #      edit_planet GET    /planets/:id/edit(.:format)                 planets#edit
 #           planet GET    /planets/:id(.:format)                      planets#show
 #                  PATCH  /planets/:id(.:format)                      planets#update
 #                  PUT    /planets/:id(.:format)                      planets#update
 #                  DELETE /planets/:id(.:format)                      planets#destroy



  def index
    @planets = Planet.all
  end

  def create
    new_planet = Planet.create(planet_params)

    redirect_to "/planets/#{ new_planet.id }"
  end

  def new

  end

  def edit
    @planet = Planet.find(params[:id])
    @life_checked = ""
    @nolife_checked = ""
    if @planet.life
      @life_checked = "checked"
    elsif !@planet.life
      @nolife_checked = "checked"
    end


    
  end

  def show
    @planet = Planet.find(params[:id])
  
  end

  def update
    edit_planet = Planet.find(params[:id])
    edit_planet.update(planet_params)

    redirect_to "/planets/#{ edit_planet.id }"
  end

  def destroy
    Planet.delete(params[:id])

    redirect_to "/planets"
  end

private

def planet_params
  params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
end




end