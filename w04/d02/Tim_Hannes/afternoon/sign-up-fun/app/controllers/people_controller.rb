class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def create
    person = Person.create(params[:id])
    redirect_to person_path(person)
  end

  def new
    @person = Person.new
  end

  def edit

  end

  def show
    @person = Person.find(params[:id])
  end

  def update
    person = Person.find(params[:id])
    redirect_to person_path(person)
  end

  def destroy
    person.delete(params[:id])
  end

  private
  def person_params
    params.require(:person).permit(:name, :email)
  end
end
