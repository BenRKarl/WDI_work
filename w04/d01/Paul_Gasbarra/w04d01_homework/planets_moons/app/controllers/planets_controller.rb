class PlanetsController < ActionController::Base

  def index
    @planets = Planet.all
  end


  def show
    @planet = Planet.find(params[:id])
  end

  def create
    planet = Planet.create(planet_params)
    redirect_to "/planets/#{planet.id}"
  end

  def new
    #show form
  end

  def edit
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
