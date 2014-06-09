class QuotesController < ApplicationController
  def index

  	respond_to do |format|
			format.html 
			format.json {render json: palettes.to_json} 
	end 	

  end
end