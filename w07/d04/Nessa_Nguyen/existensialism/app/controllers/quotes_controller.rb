class QuotesController < ApplicationController
  def index
    offset = params[:offset] || 0
    quotes = Quote.limit(7).offset(offset)
    respond_to do |format|
      format.html
      format.json { render json: quotes }
    end
  end
end
