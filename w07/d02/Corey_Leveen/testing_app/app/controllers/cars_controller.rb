class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def create
    car = Car.create(car_params)
    redirect_to car_path(car)
  end

  def update
    car = Car.find(params[:id])
    car.update(car_params)
    redirect_to car_path(car)
  end

  def new
  end

  def destroy
    Car.delete(params[:id])
    redirect_to car_path
  end

  private

  def car_params
    params.require(:car).permit(:make, :year)
  end
end
