class PlanetsController < ApplicationController
 
         #planets GET    /planets(.:format)                           planets#index
                 #POST   /planets(.:format)                           planets#create
      #new_planet GET    /planets/new(.:format)                       planets#new
     #edit_planet GET    /planets/:id/edit(.:format)                  planets#edit
          #planet GET    /planets/:id(.:format)                       planets#show
                 #PATCH  /planets/:id(.:format)                       planets#update
                 #PUT    /planets/:id(.:format)                       planets#update
                 #DELETE /planets/:id(.:format)                       planets#destroy
  
  def index
    @planets = Planet.all
  end

  
 def create
    planet = Planet.create(planet_params)
    redirect_to "/planets/#{planet.id}"
  end

  
  def new
  end

 
  def edit
    @planet = Planet.find(params[:id])
  end

   def show
    @planet = Planet.find(params[:id])
  end

  
  def update
    planet = Planet.find(params[:id])
    planet.update(planet_params)
    redirect_to "/planets/#{planet.id}"
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
