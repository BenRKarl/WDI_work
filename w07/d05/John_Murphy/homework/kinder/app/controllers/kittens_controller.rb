class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
    # respond_to do |format|
    #   format.html
    #   format.json {render}
    # end
  end
  def random
    @width = rand(100..200)
    @height = rand(100..200)
  end

  def create
    kitten = Kitten.create(kitten_params)
    respond_to do |format|
      format.html
      format.json { render :json => kitten.to_json}
    end
  end

  private
  def kitten_params
    params.require(:kitten).permit(:url)
  end
end
