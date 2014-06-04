class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end
  def show
    @dogs = Dog.find(params[:id])
  end
  def edit
    @dogs = Dog.find(params[:id])
  end
  def create
    dogs = Dog.create(dogs_params)
    redirect_to dogs_path(dogs)
  end
  def update
    dogs = Dog.find(params[:id])
    dogs.update(dogs_params)
    redirect_to dogs_path(dogs)
  end
  def new
  end
  def destroy
    Dog.delete(params[:id])
    redirect_to dogs_path
  end



  private

  def dogs_params
    params.require(:dogs).permit(:name, :age)
  end
end
