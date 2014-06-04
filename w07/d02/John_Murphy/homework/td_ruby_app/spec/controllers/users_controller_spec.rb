require 'spec_helper'

describe UsersController do

  describe 'given a user' do
    before :each do
      @andre = User.new()
      @andre.username = 'Andre'
      @andre.save
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
        expected = [@andre]
        expect(actual).to eq(expected)
      end
    end




    describe 'GET show' do
      before :each do
        get :show, :id => @andre.id
      end

      it 'assigns @user' do
        actual = assigns(:user)
        expected = @andre
        expect(actual).to eq(expected)
      end

      it 'responds successfully' do
        expect(response.code).to eq('200')
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end
    end

    describe 'GET edit' do
      before :each do
        get :edit, :id => @andre.id
      end

      it 'responds successfully' do
        expect(response.code).to eq('200')
      end

      it 'assigns @user' do
        actual = assigns(:user)
        expected = @andre
        expect(actual).to eq(expected)
      end

      it 'renders the edit template' do
        expect(response).to render_template('edit')
      end
    end

    describe 'POST update' do
      before :each do
        post :update, {:id => @andre.id, :user => {username: 'dr. dre'}}
      end

      it 'responds with a redirect' do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)
      end

      it 'updates user record' do
        @andre.reload
        actual = @andre.username
        expected = 'dr. dre'
        expect(actual).to eq(expected)
      end

      it 'redirects to show' do
        response.should redirect_to user_path(@andre)
      end
    end

    describe 'DELETE destroy' do

      it 'destroys user record, and redirects to users_path successfully' do
        expect { delete :destroy, {:id => @andre.id} }
        .to change(User, :count).by(-1)
        expect(response.code).to eq('302')
        response.should redirect_to users_path

      end
    end
  end


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
  end



  describe 'POST create' do

    before :each do
      post :create, {:user => {username: 'Kathew Lamp', email: 'klool@tmail.com'}}
    end

    it 'responds with a redirect' do
      actual = response.code
      expected = '302'
      expect(actual).to eq(expected)
    end

    it 'inserts a user record' do
      actual = User.last.username
      expected = 'Kathew Lamp'
      expect(actual).to eq(expected)
    end

    it 'redirects to show' do
      response.should redirect_to user_path(User.last)
    end

  end
end
