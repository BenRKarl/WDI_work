
class PeopleController < ApplicationController
#       people GET    /people(.:format)          people#index
#             POST   /people(.:format)          people#create
#  new_person GET    /people/new(.:format)      people#new
# edit_person GET    /people/:id/edit(.:format) people#edit
#      person GET    /people/:id(.:format)      people#show
#             PATCH  /people/:id(.:format)      people#update
#             PUT    /people/:id(.:format)      people#update
#             DELETE /people/:id(.:format)      people#destroy


  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    person = Person.create(person_params)
    redirect_to person_path(person)
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    person = Person.find(params[:id])
    redirect_to person_path(person)
  end

  def delete

    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:name, :email)
  end
end
