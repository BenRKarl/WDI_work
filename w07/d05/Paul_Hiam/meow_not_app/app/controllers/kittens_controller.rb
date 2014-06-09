class KittensController < ApplicationController
  
  def index
    @kittens = Kitten.all

    respond_to do |format|
     
      format.json {render :json => @kittens.to_json}
       format.html
    end
  end

  def random
    @random1 = rand(900)
    @random2 = rand(900)

  end

end