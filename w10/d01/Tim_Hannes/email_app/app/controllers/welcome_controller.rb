class WelcomeController < ApplicationController
  require 'httparty'

  def index
  end

  def find_emails(url)
    responce = HTTParty.get(url)
    responce.scan(/\w*)
  end

end
