class SitesController < ApplicationController
  def index
    @sites = Site.all
  end

  def search

  end

  def create
    @url    = params[:url].to_s
    @emails = Site.find_email(@url)

    @emails.each do |email|
      person = Person.find_or_create_by(email: email)
      site   = Site.find_or_create_by(url: @url)
      site.people << person
    end

    redirect_to '/sites'
  end
end
