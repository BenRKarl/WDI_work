require 'spec_helper'

describe UsersController do
  describe 'given a user' do

    before :each do
        @ben = User.new
        @ben.name = "Benjamin"
        @ben.save
    end

    describe 'GET index' do
        before :each do
          get :index
        end
        it 'responds successfully' do
          expect(response.code).to eq('200')
        end
        it 'assigns @users' do
          actual = assigns(:users)
          expected = [@ben]
          expect(actual).to eq(expected)
        end
    end # GET index

    describe 'GET show' do
        before :each do
          get :show, :id=>@ben.id
        end
        it 'responds successfully' do
          expect(response.code).to eq('200')
        end
        it 'assigns @user' do
          actual = assigns(:user)
          expected = @ben
          expect(actual).to eq(expected)
        end
        it 'renders the show template' do
          expect(response).to render_template('show')
        end
    end # GET show

    describe 'GET edit' do
        before :each do
          get :edit, :id=>@ben.id
        end
        it 'responds successfully' do
          expect(response.code).to eq('200')
        end
        it 'assigns @user' do
          actual = assigns(:user)
          expected = @ben
          expect(actual).to eq(expected)
        end
        it 'renders the edit template' do
          expect(response).to render_template('edit')
        end
    end # GET edit

    describe 'POST update' do
        before :each do
          post :update, {:id => @ben.id, :user => {name: 'Ben Karl'}}
        end
        it 'responds with a redirect' do
          expect(response.code).to eq('302')
        end
        it 'updates user record' do
          @ben.reload
          actual = @ben.name
          expected = 'Ben Karl'
          expect(actual).to eq(expected)
        end
        it 'redirects to show' do
          response.should redirect_to user_path(@ben)
        end
    end # POST update

    describe 'DELETE destroy' do
        it "destroys a user record" do
          expect {delete :destroy, {:id => @ben.id}}
            .to change(User, :count).by(-1)
        end
    end
  end # Given a user

  describe 'GET new' do
      before :each do
        get :new
      end
      it 'responds successfully' do
        expect(response.code).to eq('200')
      end
      it 'renders the new template' do
        expect(response).to render_template('new')
      end
  end # GET new

  describe 'POST create' do
      before :each do
        post :create, { :user => {name: "Marshawn Lynch"} }
      end
      it 'responds with a redirect' do
        expect(response.code).to eq('302')
      end
      it 'inserts a user record' do
        actual = User.last.name
        expected = 'Marshawn Lynch'
        expect(actual).to eq(expected)
      end
      it 'redirects to show' do
        response.should redirect_to user_path(User.last)
      end
  end # POST create

end # UserController
