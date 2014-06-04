require 'spec-helper'

describe LocationController  do
  describe 'given a location' do
    #have a location
    before :each do
      @home = Location.new()
      @Location.name = 'Home'
      @home.save
    end

    #---SHOW---
    describe 'GET show' do
      before :each do
        get :show, :id=>@home.id
      end
    end #  SHOW tests

end #describe LocationController
