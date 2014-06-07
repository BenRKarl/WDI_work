class KittensController < ApplicationController

  def show

    kittens = Kitten.all

    respond_to do |format|
      format.html
      format.json { render :json => kittens.to_json }
    end

  end

end