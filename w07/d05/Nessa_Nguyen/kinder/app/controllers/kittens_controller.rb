class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def random
    @url = Kitten.random
    respond_to do |format|
      format.html
      format.json { render json: @url.to_json }  
    end
  end

  def create
    Kitten.create(kitten_params)
    redirect_to kittens_random_path
  end

  private
  def kitten_params
    params.require(:kitten).permit(:url)
  end
end
