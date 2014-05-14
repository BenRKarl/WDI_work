

class MoonsController < ActionController::Base

  def index
    @moons = Moon.all
  end


  def show
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.find(params[:id])
  end

   def new
    @planet = Planet.find(params[:planet_id])
    #show form
  end

  def create
    planet = Planet.find(params[:planet_id])
    moon = Moon.create(moon_params)
    planet.moons << moon
    redirect_to "/planets"
  end

  def edit
    @planet = Planet.find(params[:planet_id])
    @moon = Moon.find(params[:id])
  end

  def update
    moon = Moon.find(params[:id])
    moon.update(moon_params)
    redirect_to "/planets"
  end

  def destroy
    Moon.delete(params[:id])
    redirect_to "/planets"
  end

  private

  def moon_params
    params.require(:moon).permit(:name, :image_url, :diameter, :mass, :life)
  end

end
