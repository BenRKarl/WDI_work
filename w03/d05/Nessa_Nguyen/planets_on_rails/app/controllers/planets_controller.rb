class PlanetsController < ActionController::Base
  def index
    @planets = Planet.all
  end

  def new
  end

  def create
    @planet = Planet.create(params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life))

    redirect_to '/planets'
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    edited_planet = Planet.find(params[:id])
    edited_planet.update(params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)) 
    @planet = edited_planet

    redirect_to "/planets/#{ @planet.id }"
  end 

  def show 
    @planet = Planet.find(params[:id])
  end

  def destroy
    Planet.delete(params[:id])
    redirect_to "/planets"
  end
end
