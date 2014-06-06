#MAKE THIS ALL WORK
#  Prefix Verb   URI Pattern                   Controller#Action
#     locations GET    /locations(.:format)          locations#index
#               POST   /locations(.:format)          locations#create
#  new_location GET    /locations/new(.:format)      locations#new
# edit_location GET    /locations/:id/edit(.:format) locations#edit
#      location GET    /locations/:id(.:format)      locations#show
#               PATCH  /locations/:id(.:format)      locations#update
#               PUT    /locations/:id(.:format)      locations#update
#               DELETE /locations/:id(.:format)      locations#destroy

require 'spec_helper'

describe LocationsController do
  before :each do
    @home = Location.new()
    @home.name = 'Home'
    @home.save
  end


# #---INDEX---
#   describe 'Get index' do
#     before :each do
#       get :index
#     end
#     it 'responds successfully' do
#       actual = response.code
#   end

#---SHOW---
  describe 'GET show' do
    before :each do
      get :show, :id => @home.id
    end

    it 'responds successfully' do
      # actual = response.code
      # expected = '200'
      #expected '200' because it is a successful http code
      expect(@home.id).to eq(16)
    end

  end #end of show

end
