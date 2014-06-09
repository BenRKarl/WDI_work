class KittensController < ApplicationController

  def show

  end

  def create

    kitten = Kitten.create(kitten_params)

    respond_to do |format|
      # format.html { redirect_to '/kittens/random' }
      format.json { render :json => kitten.to_json }
    end

  end

  private

  def kitten_params
    params.require(:kitten).permit(:url) # where do I get this info?
  end

end