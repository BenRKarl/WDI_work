class JuicesController < ApplicationController
  def index
    @juices = Juice.all
    respond_to do |format|
      format.json { render :json =>@juices.to_json}
      format.html
    end
  end

  def show
    @juice  = Juice.find(params[:id])
  end

  def edit
    @juice  = Juice.find(params[:id])
  end

  def create
    juice = Juice.create(juice_params)
    redirect_to juice_path(juice)
  end

  def update
    juice  = Juice.find(params[:id])
    juice.update(juice_params)
    redirect_to juice_path(juice)
  end

  def new
  end

  def destroy
    Juice.delete(params[:id])
    redirect_to juices_path
  end

  private

  def juice_params
    params.require(:juice).permit(:name, :flavor, :rating, :sizes, :niclevels, :recommend)
  end

end
