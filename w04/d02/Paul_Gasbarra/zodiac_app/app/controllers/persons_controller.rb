class PersonsController < ActionController::Base

  def index
    @persons = Person.all
  end

end
