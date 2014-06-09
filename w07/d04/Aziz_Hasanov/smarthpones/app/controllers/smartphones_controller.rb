class SmartphonesController < ApplicationController
  def root
  end
  def index
    @smartphones = Smartphone.all
    respond_to do |format| # ????????????????????????????????????????????
      format.json {render :json => @smartphones.to_json}
      format.html
    end
  end
  def new
  end
  def create
    smartphone = Smartphone.create(device_params)
    redirect_to "/smartphones/#{smartphone.id}"
  end
  def show
    @smartphone = Smartphone.find(params[:id])
  end
  def edit
    @smartphone = Smartphone.find(params[:id])
  end
  def update
    smartphone = Smartphone.find(params[:id])
    smartphone.update(device_params)
    redirect_to "/smartphones/#{smartphone.id}"
  end
  def destroy
    Smartphone.delete(params[:id])
    redirect_to "/smartphones"
  end

  private

  def device_params
    params.require(:smartphone).permit(:model, :os)
  end
end
