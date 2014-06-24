class WizardsController < ApplicationController

  before_action :require_login, only: [:profile]
  # if trying to go to page, and not logged in it blocks

  def new
    @wizard = Wizard.new
  end

  # def create
  #   @wizard = Wizard.create(wizard_params)
  #   redirect_to login_path
  # end

  #if something doesn't work, it leaves field populated when it renders again.
  #you wouldn't have to refill every form if you messed one up
  def create
    @wizard = Wizard.new(wizard_params)
    if @wizard.save
      redirect_to login_path
    else
      render :new
    end
  end

  def profile
  end

  private

  def wizard_params
    params.require(:wizard).permit(:email, :password)
  end
end
