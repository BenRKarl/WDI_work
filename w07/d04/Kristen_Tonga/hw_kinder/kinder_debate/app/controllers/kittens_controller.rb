class KittensController < ApplicationController

  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.json{ render :json => kitten.to_json }
      format.html
    end
  end

end
