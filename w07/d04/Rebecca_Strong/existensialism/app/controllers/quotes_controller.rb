class QuotesController < ApplicationController
  def index
    offset = params[:offset] || 0
    quotes = Quote.limit(10).offset(offset)

    respond_to do |format|
      format.html #quotes/index.html.erb
      format.json {render json: quotes} # curly brackets mean a block; could be removed and text put on another line.
    end
  end
end
