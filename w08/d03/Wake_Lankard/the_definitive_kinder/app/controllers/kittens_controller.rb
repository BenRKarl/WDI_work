class KittensController < ApplicationController
  def index
  end

  def create
    kitten = Kitten.create(params_kitten)
    render :json => kitten.to_json
  end
end

private

def params_kitten
  params.require(:kitten).permit(:url)
end