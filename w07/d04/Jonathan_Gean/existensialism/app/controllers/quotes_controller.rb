class QuotesController < ApplicationController
  def index
  offset = params[:offset]  || 0
   quotes = Quote.limit(15).offset(offset)
    respond_to do |format|
    format.html
    format.json {render json: quotes}
    end
  end
end
