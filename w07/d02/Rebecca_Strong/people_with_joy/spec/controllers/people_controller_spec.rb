require 'spec_helper'

#can it be true that
describe PeopleController do
  #have a person
  describe 'given a person' do

    before :each do
      @andre = Person.new()
      @andre.name = 'Andre'
      @andre.save
    end


  #done a get request for the index action
    describe 'GET index' do
        before :each do
        get :index
      end

      it 'responds sucessfully' do
          actual = response.code
          expected = '200'
          expect(actual).to eq(expected)

      end

      it 'assigns @people' do
        actual = assigns(:people)
        expected = [@andre]
        expect(actual).to eq(expected)
      end


    end # GET index


    describe 'Get show' do
        before :each do
        get :show, :id=>@andre.id
    end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end


      it 'assigns @person' do
        actual = assigns(:person)
        expected =@andre
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end


end #Get show

# --- EDIT ---
    describe 'GET edit' do
      before :each do
      get :edit, :id => @andre.id
    end

    it 'responds successfully' do
      actual - response.code
      expected = '200'
      expect(response.code).to eq('200')
    end

    it 'assigns @person' do
      actual= assigns (:person)
      expected = @andre
      expect(actual).to eq(expetected)
    end

    it 'renders the edit template'do
      expect(response).to render_template('edit')
    end

  end #GET edit


#---UPDATE ---
describe 'POST update' do
  before :each do
    post :update, {:id => @andre.id, :person > {name: 'notandre'}}
  end

  it "responds with a redirect" do
    actual = response.code
    expected = '302'
    expect(actual).to eq(expected)
  end

  it 'updates person record' do
    @andre.reload
    actual = @andre.name
    expected = 'notandre'
    expect(actual).to eq(expected)
  end

  it "redirects to show" do
    response.should redirect_to person_path(@andre)
  end

  end # Given a person

  describe 'POST create' do
      before :each do
        post :create, {:person => {name: 'Kathew Lamp', email: 'kloo@tmail.com'}}
  end

      it "responds with a redirect" do
        actual = response.code
        expetected = '302'
        expect(actual).to eq(expected)
      end

      it "inserts a person record" do
        actual = Person.last.name
        expected = 'Kathew Lamp'
        expect(actual).to eq(expected)
      end

    it "redirects to show" do
      response.should redirect_to person_path(Person.last)
    end


end #POST update

    describe 'DELETE destroy' do
      expect {delete :destroy, {:id => @andre.id} }
      .to change(Person, :count).by(-1)
    end
  end





end # PeopleController
