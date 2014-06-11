class KittensController < ApplicationController
  
  def index
    @kittens = Kitten.all
    respond_to do |format|
     
      format.json {render :json => @kittens.to_json}
       format.html
    
    end
  end

  def create
    kitten = Kitten.create(kitten_params)
   respond_to do |format|
     
      format.json {render :json => kitten.to_json}
       format.html

  end

end

private

  def kitten_params
    params.require(:kitten).permit(:url)
  end
end