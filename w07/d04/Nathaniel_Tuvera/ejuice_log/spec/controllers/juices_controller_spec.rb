require 'spec_helper'

describe JuicesController do

  describe 'given a juice' do
    before :each do
      @danger_zone      = Juice.new()
      @danger_zone.name = "Danger Zone"
      @danger_zone.save
    end
    #--- INDEX ---
    describe 'GET index' do
      before :each do
        get :index
      end

      it 'responds successfully' do
        actual    = response.code
        expected  = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @juices' do
        actual  = assigns(:juices)
        expected= [@danger_zone]
        expect(actual).to eq(expected)
      end

    end # GET index
    # --- SHOW ---
    describe 'GET show' do
      before :each do
        get :show, :id => @danger_zone.id
      end

      it 'assigns @juice' do
        actual  = assigns(:juice)
        expected= @danger_zone
        expect(actual).to eq(expected)
      end

      it 'responds successfully' do
        actual   = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end
    end #GET show

    describe 'GET edit' do
      before :each do
        get :edit, :id => @danger_zone.id
      end

      it 'responds successfully' do
        actual   = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @juice' do
        actual  = assigns(:juice)
        expected= @danger_zone
        expect(actual).to eq(expected)
      end

      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end

    end # GET edit

    # --- UPDATE ---
    describe 'POST update' do
      before :each do
        post :update, {:id => @danger_zone.id, :juice => {name: 'Safety Zone'}}
      end

      it "responds with a redirect" do
        actual  = response.code
        expected= '302'
        expect(actual).to eq(expected)
      end

      it 'updates the juice record' do
        @danger_zone.reload
        actual  = @danger_zone.name
        expected= 'Safety Zone'
        expect(actual).to eq(expected)
      end

      it 'redirects to show' do
        response.should redirect_to juice_path(@danger_zone)
      end

    end # POST update

    describe 'DELETE destroy' do
      it "destroy a juice record" do
        expect { delete :destroy, {:id =>@danger_zone.id} }
        .to change(Juice, :count).by(-1)
      end

    end # DELETE destroy

    describe 'GET new' do
      before :each do
        get :new
      end

      it 'response sucessfully' do
        actual  = response.code
        expected= '200'
        expect(actual).to eq(expected)
      end

      it 'renders the new template' do
        expect(response).to render_template('new')
      end

    end # GET new
  # --- CREATE ---
  describe "POST create" do
    before :each do
      post :create, {:juice => {name: 'Butterpecan',
                                flavor: 'savory',
                                rating: 5,
                                sizes: '10, 30, 50',
                                niclevels: '0 to 32, increments of 2',
                                recommend: true}}
    end


    it 'responds with a redirect' do
      actual  = response.code
      expected= '302'
      expect(actual).to eq(expected)
    end

    it ' inserts a new juice record' do
      actual  = Juice.last.name
      expected= "Butterpecan"
      expect(actual).to eq(expected)
    end

    it 'redirects to show' do
      response.should redirect_to juice_path(Juice.last)
    end

  end # CREATE

end # Given Juice
end # PeopleController
