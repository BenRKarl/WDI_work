class WelcomeController < ApplicationController

  def index
    @people = Person.all
  end

  def create

    url = params[:url]
    doc = HTTParty.get(url)
    emails = doc.scan(/\w+@\w+/)
    emails.each do |email|
      person = Person.find_or_create_by(email: email)
      site = Site.find_or_create_by(url: url)
      person.sites << site
    end
    redirect_to '/emails'

    # binding.pry
    # find_emails(site_params[:site])
    # site = Site.create(params[:site])
    # binding.pry
    # emails = find_emails(site_params[:site])
    # binding.pry
    # emails.each do |email|
    #   new_email = Email.create(email: email)
    #   site.emails << new_email
    # end
    # binding.pry
    # render :json => emails.to_json

  end

  private

  def find_emails(url)
    response = HTTParty.get(url)
    response.scan(/\w+@\w+/)
  end

  def site_params
    params.require(:site).permit(:site)
  end
end
