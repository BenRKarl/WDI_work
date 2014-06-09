class KittensController < ApplicationController

  def index

  end

  def create
    kitten = Kitten.create(kitten_params)
    redirect_to kitten_path(kitten)
  end

  def kitten_params
    params.require(:kitten).permit(:url)
  end

end
