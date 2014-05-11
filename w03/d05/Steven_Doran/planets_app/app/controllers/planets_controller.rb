class PlanetsController <ApplicationController

  def index
    @planets = Planet.all
  end

  def new
  end

  def create
    new_planet = Planet.create(params.require(:planet).permit(:name), params.require(:planet).permit(:image_url), params.require(:planet).permit(:diameter), params.require(:planet).permit(:mass), params.require(:planet).permit(:mass), params.require(:planet).permit(:life))
    redirect_to "/planets/#{new_planet.id}"
  end

  def show
    @planet = Planet.find(params[:id])
  end

end