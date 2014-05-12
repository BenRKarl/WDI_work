class CelebritiesController < ApplicationController

  def index
    @celebrities = Celebrity.all
  end

  def age
    @celebrities = Celebrity.age
  end

  def fame
    @celebrities = Celebrity.fame
  end

  def substance
    @celebrities = Celebrity.substance
  end

  def new
#show me a form!!
  end

  def create
    new_celebrity = Celebrity.create(params.require(:celebrity).permit(:celebrityname, :age, :fame, :substance) )
    redirect_to "/celebrities/#{new_celebrity.id}"
  end

  def edit
    @celebrity = Celebrity.find(params[:id])
  end

  def update
    edited_celebrity = Celebrity.find(params[:id])
    edited_celebrity.update( params.require(:celebrity).permit(:celebrityname, :age, :fame, :substance) )
    redirect_to "/celebrities/#{edited_celebrity.id}"
  end

  def show
    @celebrity = Celebrity.find(params[:id])
  end

  def destroy
    Celebrity.delete(params[:id])
    redirect_to '/celebrities'
  end


end
