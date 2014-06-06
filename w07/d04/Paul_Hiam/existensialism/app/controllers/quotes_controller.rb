class QuotesController < ApplicationController
  def index
    offset = params[:offset] || 0
    quotes = Quote.limit(5).offset(offset)
    respond_to do |format|
      format.html #quotes/index.html.erb
      format.json {render json: quotes}
    end
  end
end