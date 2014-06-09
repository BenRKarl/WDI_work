class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    respond_to do |format|
      format.json {render :json => @dogs.to_json}
      format.html
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def create
    dog = Dog.create(dog_params)
    respond_to do |format|
      format.html {redirect_to dog_path(dog)}
      format.json {render :json => dog.to_json}
    end
  end

  def update
    dog = Dog.find(params[:id])
    dog.update(dog_params)
    redirect_to dog_path(dog)
  end

  def new
  end

  def destroy
    dog = Dog.delete(params[:id])
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed)
  end
end
