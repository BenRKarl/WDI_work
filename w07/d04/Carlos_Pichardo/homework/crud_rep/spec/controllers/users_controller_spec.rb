require 'spec_helper'



describe UsersController do

  describe 'given a person' do
      before :each do
      @carlos = Person.new()
      @carlos.name = 'Carlos'
      @carlos.save
    end


  describe "GET index" do
        before :each do
        get :index
      end

    it "assigns all users as @users" do
      get :index
      assigns(:users).should eq([user])
    end
  end

  describe "GET show" do
    before :each do
        get :show, :id => @carlos.id
      end

    it "assigns the requested user as @user" do
      get :show
      assigns(:user).should eq(user)
    end
  end

  describe "GET new" do
    it "assigns a new user as @user" do
      get :new
      assigns(:user).should be_a_new(User)
    end
  end

  describe "GET edit" do
    it "assigns the requested user as @user" do
      get :edit, {:id => user.to_param}
      assigns(:user).should eq(user)
    end
  end

  describe "POST create" do
    before :each do
    post :create, {:person => {name: 'Carlos Pichardo'}}
    end

      it "assigns a newly created user as @user" do
        post :create
        assigns(:user).should be_a(User)
      end

      it "redirects to the created user" do
        post :create
        response.should redirect_to(User.last)
      end
    end

  end

  describe "PUT update" do

     before :each do
        post :update, {:id => @carlos.id, :person => {name: 'carlos'}}
      end

      it "assigns the requested user as @user" do
        assigns(:user).should eq(user)
      end

      it "redirects to the user" do
        response.should redirect_to(user)
      end
    end


      it "re-renders the 'edit' template" do 
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested user" do
    end

    it "redirects to the users list" do
      response.should redirect_to(users_url)
    end
  end

end
