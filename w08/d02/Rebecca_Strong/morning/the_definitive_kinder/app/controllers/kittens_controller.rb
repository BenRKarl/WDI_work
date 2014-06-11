class KittensController < ApplicationController
  def index
  end

  def create
    kitten = Kitten.create(params_kitten)
    # where _kitten is a private method
    render :json => kitten.to_json
end

def kitten_params
  params.require(:kitten).permit(:url)
end
end
