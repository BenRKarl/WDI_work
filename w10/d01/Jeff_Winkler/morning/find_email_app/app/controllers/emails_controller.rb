
class EmailsController < ApplicationController
  def index
  end

  def find

    results = Email.find_email(params[:url])
    respond_to do |format|
      format.html
      format.json {render json: results.to_json}
    end
  end

end
