class KittensController < ApplicationController

  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.json{ render :json => kitten.to_json }
      format.html
    end
  end
  def show
    @kitten = Kitten.find(params[:id])
  end

  def create
    @kitten = Kitten.find(params[:id])
    respond_to do |format|
      format.json{ render :json => kitten.to_json }
      format.html{ redirect_to kittens_path(kitten) }
    end
  end
  def new
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :email)
  end
end
