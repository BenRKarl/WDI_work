

class QuotesController < ApplicationController
  def index
    offset = params[:offset].to_i || 0
    quote_count = Quote.count.to_i
    while quote_count < offset
      offset -= quote_count
    end
    quotes = Quote.limit(7).offset(offset)
    respond_to do |format|
      format.html
      format.json {render json: quotes}
    end
  end
end
