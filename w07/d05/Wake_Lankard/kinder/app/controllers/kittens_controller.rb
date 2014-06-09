class KittensController < ApplicationController

  def index
  end

  def create
    newKitten = Kitten.create(kitten_params)
    respond_to do |format|
      format.json { render :json => newKitten}
      format.html { redirect_to kittens_path }
    end
  end

  def random
    width = (1 + rand(10)) * 100
    height = (1 + rand(10)) * 100
    kitten_url = "http://placekitten.com/" + width.to_s + "/" + height.to_s
    kitten_output = {url: kitten_url}
    respond_to do |format|
      format.json { render :json => kitten_output.to_json }
      format.html { redirect_to kittens_path }
    end
  end

  private

  def kitten_params
    params.require(:kitten).permit(:url)
  end

end
