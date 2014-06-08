class KittensController < ApplicationController
  def index
    kittens = Kitten.all

    respond_to do |format|
      format.html #kittens/index.html.erb
      format.json {render json: kittens}
    end
  end
end