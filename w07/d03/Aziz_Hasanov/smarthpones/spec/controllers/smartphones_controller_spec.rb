require 'spec_helper'

describe SmartphonesController do

  describe 'given a smartphone' do
    before :each do
      @iphone = Smartphone.new()
      @iphone.model = "iPhone"
      @iphone.save
    end

    describe 'GET index' do
      before :each do
        get :index
      end
      
      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @smartphones' do
        actual = assigns(:smartphones)
        expected = [@iphone]
        expect(actual).to eq(expected)
      end
    end # GET index

    describe 'GET show' do
      before :each do
        get :show, :id => @iphone.id
      end
      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end
      it 'assigns @smartphone' do
        actual = assigns(:smartphone)
        expected = @iphone
        expect(actual).to eq(expected)
      end
      it 'renders the show template' do
        expect(response).to render_template('show')
      end
    end # GET show

    describe 'GET edit' do
      before :each do
        get :edit, :id => @iphone.id
      end
      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end
      it 'assigns @smartphone' do
        actual = assigns(:smartphone)
        expected = @iphone
        expect(actual).to eq(expected)
      end
      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end
    end # GET edit

    describe "POST update" do
      before :each do
        post :update, {:id => @iphone.id, :smartphone => {model: "uphone"}}
      end
      it "response with a redirect" do
        actual = response.code
        expected = "302"
        expect(actual).to eq(expected)
      end
      it "updates smartphone's record" do
        @iphone.reload
        actual = @iphone.model
        expected = "uphone"
        expect(actual).to eq(expected)
      end
      it 'redirects to show' do
        response.should redirect_to smartphone_path(@iphone)
      end
    end # POST update

    describe "DELETE destroy" do
      it "destroy smartphone record" do
        expect {delete :destroy, {:id => @iphone.id}}.to change(Smartphone, :count).by(-1)
      end
    end # DELETE destroy

  end # given


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
  end # GET new

  describe 'POST create' do
    before :each do
      post :create, {:smartphone => {model: "Nokia", os: "windows phone"}}
    end
    it "response with a redirect" do
      actual = Smartphone.last.model
      expected = "Nokia"
      expect(actual).to eq(expected)
    end
    it "inserts a smartphone record" do
      actual = Smartphone.last.model
      expected = 'Nokia'
      expect(actual).to eq(expected)
    end
    it "redirects to show" do
      response.should redirect_to smartphone_path(Smartphone.last)
    end
  end # POST create
  
end # controller
