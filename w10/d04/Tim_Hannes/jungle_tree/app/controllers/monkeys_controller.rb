class MonkeysController < ApplicationController

  # monkeys GET    /monkeys(.:format)     monkeys#index
  #         POST   /monkeys(.:format)     monkeys#create
  #  monkey GET    /monkeys/:id(.:format) monkeys#show
  #         PATCH  /monkeys/:id(.:format) monkeys#update
  #         PUT    /monkeys/:id(.:format) monkeys#update
  #         DELETE /monkeys/:id(.:format) monkeys#destroy

  def index
    monkeys = Monkey.all
    render json: monkeys.to_json
    #don't care what they send back or ask for, we only accept/give json
  end

  def show
    monkey = Monkey.find(params[:id])
    render json: monkey.to_json
  end

  def create
    monkey = Monkey.create(monkey_params)
    render json: monkey.to_json
  end

  def update
    monkey = Monkey.find(params[:id])
    monkey.update(monkey_params)
    render json: monkey.to_json
  end

  def destroy
    monkey = Monkey.find(params[:id])
    monkey.destroy
    render json: monkey.to_json
  end

  private
  #private is not necessary, but we only want it available to this controller

  def monkey_params
    params.require(:monkey).permit(:name)
  end

end
