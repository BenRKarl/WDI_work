class QuotesController < ApplicationController
  
  def index

    offset = params[:offset] || 0
    offset = 0 if offset = Quote.count
    quotes = Quote.limit(5).offset(offset)

    respond_to do |format|
      format.html
      format.json { render json: quotes.to_json }
    end

  end
end