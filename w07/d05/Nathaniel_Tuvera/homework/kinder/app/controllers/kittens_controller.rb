class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.json { render :json => @kittens.to_json }
      format.html
    end
  end

  def create
    kitten = Kitten.create(kitten_params)
    respond_to do |format|
      format.json {render :json =>@kittens.to_json}
      format.html { redirect_to kitten_path(kitten) }
    end
  end

  def new
  end

  private

    def kitten_params
      params.require(:kitten).permit(:url)
    end

end
