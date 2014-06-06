class PalettesController < ApplicationController

  def index
    offset = params[:offset] || 0
    palettes = Palette.limit(5).offset(offset)

    respond_to do |format|
      format.html #palettes/index.html.erb
      format.json {render json: palettes} # curly brackets mean a block and could be removed and text put on another line.
    end
  end
end
