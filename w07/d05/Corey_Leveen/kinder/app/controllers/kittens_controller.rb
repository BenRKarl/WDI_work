class KittensController < ApplicationController

  def index


  end

  def create
    kitten = Kitten.create(kitten_params)
    respond_to do |format|
      form.html { redirect_to kitten_path(kitten) }
      form.json { render :json => kitten.to_json }
    end
  end

  private

  def kitten_params
    params.require(:kitten).permit(:url)
  end

end
