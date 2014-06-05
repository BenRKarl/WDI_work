require 'spec_helper'

describe PeopleController do

  describe 'given a person' do
    before :each do
      @andre = Person.new()
      @andre.name = 'Andre'
      @andre.save
    end


    # --- INDEX ---
    describe 'GET index' do
      before :each do
        get :index
      end

      it 'responds successfully' do
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


    # --- SHOW ---
    describe 'GET show' do
      before :each do
        get :show, :id => @andre.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @person' do
        actual = assigns(:person)
        expected = @andre
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end

    end # GET show


    # --- EDIT ---
    describe 'GET edit' do
      before :each do
        get :edit, :id => @andre.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @person' do
        actual = assigns(:person)
        expected = @andre
        expect(actual).to eq(expected)
      end

      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end

    end # GET edit


    describe 'POST update' do

      before :each do
        post :update, {:id => @andre.id, :person => {name: 'nondre'}}
      end

      it 'response with a redirect' do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)
      end

      it 'updates person record' do
        @andre.reload
        actual = @andre.name
        expected = 'nondre'
        expect(actual).to eq(expected)
      end
    end  


        describe 'DELETE destroy' do
          it "destroy person record" do
            expect { delete :destroy, {:id => @andre.id} }
            .to change(Person, :count).by(-1)
          end
        end

        describe 'POST create' do
          before :each do
            post :create, {:person => {name: 'Kathew Lamp', email: 'klool@lampmail.com'}}
          end

          it "response with a redirect" do
            actual = response.code
            expected = '302'
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
        end
  end
end
