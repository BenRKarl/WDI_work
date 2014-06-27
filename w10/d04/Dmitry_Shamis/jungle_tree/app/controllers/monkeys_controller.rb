class MonkeysController < ApplicationController
  def index
    monkeys = Monkey.all
    render json: monkeys.to_json
  end

  def create
    monkey = Monkey.create(monkey_params)
    render json: monkey.to_json
  end

  def show
    monkey = Monkey.find(params[:id])
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

  def monkey_params
    params.require(:monkey).permit(:name)
  end
end
