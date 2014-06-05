class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  def show
    @person = Person.find(params[:id])
  end
  def edit
    @person = Person.find(params[:id])
  end
  def create
    new_person = Person.create(person_params)
    redirect_to "/people/#{new_person.id}"
  end
  def update
    edit_person = Person.find(params[:id])
    edit_person.update(person_params)
    redirect_to "/people/#{edit_person.id}"
  end
  def destroy
    Person.delete(params[:id])
    redirect_to people_path
  end
  private

  def person_params
    params.require(:person).permit(:name, :email)
  end
end
