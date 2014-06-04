require 'spec_helper'

describe UsersController do

  describe 'given a user' do

    before :each do
      @lichy = User.new()
      @lichy.name = 'Lichy'
      @lichy.save
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

      it 'assigns @users' do
        actual = assigns(:users)
        expected = [@lichy]
        expect(actual).to eq(expected)
      end

    end #end GET index

    describe 'GET show' do
      before :each do
        get :show, :id => @lichy.id
      end

      it 'responds successfully' do
        actual = response.code
        expected = '200'
        expect(actual).to eq(expected)
      end

      it 'assigns @user' do
        actual = assigns(:user)
        expected = @lichy
        expect(actual).to eq(expected)
      end

      it 'renders the show template' do
        expect(response).to render_template('show')
      end

    end #GET show

    #EDIT
    describe 'GET edit' do
      before :each do
        get :edit, :id => @lichy.id
    end

    it 'responds successfully' do
      actual = response.code
      expected = '200'
      expect(actual).to eq(expected)
    end

    it 'assigns @user' do
      actual = assigns(:user)
      expected = @lichy
      expect(actual).to eq(expected)
    end

    it 'renders the show template' do
      expect(response).to render_template('edit')
    end

  end #GET edit

    describe 'POST update' do

      before :each do
        post :update, {:id => @lichy.id, :user => {name: 'lichdog'}}
      end

      it "responds with a redirect" do
        actual = response.code
        expected = '302'
        expect(actual).to eq(expected)
      end

      it 'updates user record' do
        @lichy.reload
        actual = @lichy.name
        expected = 'lichdog'
        expect(actual).to eq(expected)
      end

      it "redirects to show" do
        response.should redirect_to user_path(@lichy)
      end

    end

    describe 'DELETE destroy' do
      it "destroys user record" do
        expect { delete :destroy, {:id => @lichy.id} }
          .to change(User, :count).by(-1)
      end
    end

  end #end given a user

  describe 'GET new' do
    before :each do
      get :new
    end

    it 'responds successfully' do
      actual = response.code
      expected = '200'
      expect(actual).to eq(expect)
    end

    it 'renders the new template' do
      expect(response).to render_template('new')
    end

  describe 'POST create' do
    before :each do
      post :create, {:user => {name: 'Lichy Da Grey', email: 'ldg@gmail.com'}}
    end

    it "response with a redirect" do
      actual = response.code
      expected = '302'
      expect(actual).to eq(expected)
    end

    it "inserts a user record" do
      actual = User.last.name
      expected = 'Lichy Grey'
      expect(actual).to eq(expected)
    end

    it "redirects to show" do
      response.should redirect_to user_path(User.last)
    end

  end
end

end #end all
