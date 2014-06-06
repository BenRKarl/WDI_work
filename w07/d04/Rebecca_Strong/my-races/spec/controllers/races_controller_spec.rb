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
describe 'GET index' do
      before :each do
        get :index
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @races' do
        actual = assigns(:races)
        expected = [@pucon]
        expect(actual).to eq(expected)
      end

    end # GET index

#done a get request for the show action
describe 'GET show' do
      before :each do
        get :show, :id => @pucon.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @race' do
        actual = assigns(:person)
        expected = @race
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end

    end # GET show

#done a get request for the edit action

 describe 'GET edit' do
      before :each do
        get :edit, :id => @pucon.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @race' do
        actual = assigns(:race)
        expected = @pucon
        expect(actual).to eq(expected)
      end

      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end

    end # GET edit

#done a get request for the update action
describe 'POST update' do

      before :each do
        post :update, {:id => @pucon.id, :race => {name: 'nonrace'}}
      end

      it "response with a redirect" do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)
      end

      it 'updates race record' do
        @pucon.reload
        actual = @pucon.name
        expected = 'nonrace'
        expect(actual).to eq(expected)
      end

      it "redirects to show" do
        response.should redirect_to race_path(@pucon)
      end

    end # POST update


#done a get request for the new action
describe 'GET new' do
    before :each do
      get :new
    end

    it 'responds successfully' do
      actual = response.code
      expected = '200'
      expect(actual).to eq(expected)
    end

    it 'renders the new template' do
      expect(response).to render_template('new')
    end

  end # GET edit

#done a get request for the delete action
 describe 'DELETE destroy' do
     it "destory race record" do
        expect { delete :destroy, {:id => @pucon.id} }
          .to change(Race, :count).by(-1)
      end
    end

  end # given a race

  #done a post request for the create action

    describe 'POST create' do
    before :each do
      post :create, {:race => {name: 'Pucon', location: 'Chile', race_date: 'January, 2012', finish_time: '6 hours 9 minutes'}}
    end

    it "response with a redirect" do
      actual = response.code
      expected = '302'
      expect(actual).to eq(expected)
    end

    it "inserts a race record" do
      actual = Race.last.name
      expected = 'Pucon'
      expect(actual).to eq(expected)
    end

    it "redirects to show" do
      response.should redirect_to race_path(Race.last)
    end

  end




end #RacesController

