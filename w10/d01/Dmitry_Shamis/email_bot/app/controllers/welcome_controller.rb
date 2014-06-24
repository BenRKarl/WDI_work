class WelcomeController < ApplicationController
  def index
    @website = Website.all
  end

  def create
    site = params[:url]
    @results = Website.email_bot(site)
    @results.each do |email|
      person_email = Website.find_or_create_by(email: email)
      site = Website.find_or_create_by(url: site)
      site.emails << person_email
    end
    redirect_to people_path

    # respond_to do |format|
    #   format.html
    #   format.json {render :json => @results.to_json}
    # end
  end

end
