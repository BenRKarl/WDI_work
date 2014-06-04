require 'spec_helper'

describe DogsController do

  describe 'given a person' do
    before :each do
      @cali = Dog.new()
      @cali.name = "Cali"
      @cali.age = 8
      @cali.save
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

      it 'assigns @dogs' do
        actual = assigns(:dogs)
        expected = [@cali]
        expect(actual).to eq(expected)
      end

    end # GET index

    describe 'GET show' do
      before :each do
        get :show, :id => @cali.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @dogs' do
        actual = assigns(:dogs)
        expected = @cali
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end

    end
    describe 'GET edit' do
      before :each do
        get :edit, :id => @cali.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @dogs' do
        actual = assigns(:dogs)
        expected = @cali
        expect(actual).to eq(expected)
      end

      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end

    end
    describe 'POST update' do

      before :each do
        post :update, {:id => @cali.id, :dogs => {name: 'cali'}}
      end

      it "response with a redirect" do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)
      end

      it 'updates dogs record' do
        @cali.reload
        actual = @cali.name
        expected = 'cali'
        expect(actual).to eq(expected)
      end

      it "redirects to show" do
        response.should redirect_to dogs_path(@cali)
      end

    end # POST update
    describe 'DELETE destroy' do
     it "destroy dogs record" do
        expect { delete :destroy, {:id => @cali.id} }
          .to change(dogs, :count).by(-1)
      end
    end
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
  end
end
