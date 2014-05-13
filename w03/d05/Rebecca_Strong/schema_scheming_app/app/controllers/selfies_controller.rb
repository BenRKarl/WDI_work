class SelfiesController < ApplicationController

  def index
    @selfies = Selfie.all
  end

  def new
#show me a form!!
  end

  def create
    new_selfie = Selfie.create(params.require(:selfie).permit(:selfiename) )
    redirect_to "/selfies/#{new_selfie.id}"
  end

  def edit
    @selfie = Selfie.find(params[:id])
  end

  def update
    edited_selfie = Selfie.find(params[:id])
    edited_selfie.update( params.require(:selfie).permit(:selfiename) )
    redirect_to "/selfies/#{edited_selfie.id}"
  end

  def show
    @selfie = Selfie.find(params[:id])
  end

  def destroy
    Selfie.delete(params[:id])
    redirect_to '/selfies'
  end


end
