class PlanetsController < ActionController::Base
  def index
    @planets = Planet.all
  end

  def new
    @planet = Planet.new
  end


  def create
    @planet = Planet.create(planet_params)
    redirect_to '/planets'
  end


  def edit 
    @planet = Planet.find(params[:id])
  end

  def update  
    edited_planet = Planet.find(params[:id])
    @planet = edited_planet.update(planet_params)

    redirect_to planet_path(@planet.id)
  end

  def show 
    @planet = Planet.find(params[:id])
  end

  def destroy
    Planet.destroy(params[:id])

    redirect_to '/planets'
  end

  private
  def planet_params
    params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
  end
end
