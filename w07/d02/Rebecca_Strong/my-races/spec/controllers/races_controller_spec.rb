require 'spec_helper'

#can it be true that
describe RacesController do
  #have a person
  describe 'given a race' do

    before :each do
      @pucon = Race.new()
      @pucon.name = 'Pucon'
      @pucon.save
    end
  end

#done a get request for the index action

#done a get request for the show action

#done a get request for the edit action

#done a get request for the update action

#done a get request for the create action

#done a get request for the delete action


end #races controller

