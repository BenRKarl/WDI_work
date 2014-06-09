
class PeopleController < ApplicationController

  def index
    @people = Person.all
    respond_to do |format|
      format.json {render :json => @people.to_json}
      format.html
    end
  end

  def show
    @person = Person.find(params.fetch(:id))
  end

  def new
  end

  def create
    person = Person.create(person_params)
    respond_to do |format|
      format.json {render :json => person.to_json}
      format.html {redirect_to person_path(person)}
    end

  end


  def edit
    @person = Person.find(params.fetch(:id))
  end

  def update
    person = Person.find(params.fetch(:id))
    person.update(person_params)
    redirect_to person_path(person)
  end

  def destroy
    Person.delete(params.fetch(:id))
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:name, :email)
  end
end
