class KittensController < ApplicationController

  def index
  end

  def random
  end

  def new
  end

  def create
    kitten = Kitten.create(kitten_params)
    respond_to do |format|
      format.html { redirect_to kittens_path(kitten) }
      format.json { render :json => kitten.to_json }
    end
  end

  private

  def kitten_params
    params.require(:kitten).permit(:url)
  end

end
