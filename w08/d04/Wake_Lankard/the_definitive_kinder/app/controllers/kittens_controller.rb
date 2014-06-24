class KittensController < ApplicationController
  def index
    kittens = Kitten.all 
    respond_to do |format|
      format.html
      format.json {render :json => kittens.to_json }
    end
  end

  def create
    kitten = Kitten.create(params_kitten)
    render :json => kitten.to_json
  end


  private

  def params_kitten
    params.require(:kitten).permit(:url)
  end
end