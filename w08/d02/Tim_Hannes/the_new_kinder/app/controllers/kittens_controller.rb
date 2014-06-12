class KittensController < ApplicationController

  def index
  end

  def create
    kitten = Kitten.create(kitten_params)
    render :json => kitten.to_json
  end

  private

  def kitten_params
    params.require(:kitten).permit(:url)
  end

end
