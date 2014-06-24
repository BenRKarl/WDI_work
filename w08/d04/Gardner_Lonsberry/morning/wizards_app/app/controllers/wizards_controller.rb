class WizardsController < ApplicationController
  before_action :require_login, only: [:profile]

  def new
    @wizard = Wizard.new  
  end

  def create
    @wizard = Wizard.new(wizard_params)
    if @wizard.save
      redirect_to login_path
    else
      render :new
    end
  end

    # @wizard = Wizard.create(wizard_params)
    # redirect_to login_path

  def profile
  end
  
  def wizard_params
    params.require(:wizard).permit(:email, :password)
  end
end




