class WelcomeController < ApplicationController

  def index
    @emails = Email.all
  end

end
