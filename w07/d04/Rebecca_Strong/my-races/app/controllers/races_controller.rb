class RacesController < ApplicationController
  def index
    @race = Race.all
    respond_to do |format|
      format.json { render :json => @races.to_json }
      format.html
    end
  end
  def show
    @race = Race.find(params[:id])
  end
  def edit
    @race = Race.find(params[:id])
  end
  def create
    race = Race.create(race_params)
    redirect_to race_path(race)
      format.html { redirect_to race_path(person) }
      format.html { render :json=> race.to_json}
  end
  def update
    race = Race.find(params[:id])
    race.update(race_params)
    redirect_to race_path(race)
  end

  def new
  end
  def destroy
    Race.delete(params[:id])
    redirect_to races_path
  end

  private

  def race_params
    params.require(:race).permit(:name, :location, :race_date, :finish_time)
  end

end
