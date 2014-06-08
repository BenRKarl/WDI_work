class KittensController < ApplicationController
respond_to :html, :js

  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.html
  end

  def create
  end

  def update
  end



private

  def kitten_params
    params.require(:kitten).permit(:url)
  end

end


