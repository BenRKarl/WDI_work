require 'test_helper'

class ProtosControllerTest < ActionController::TestCase
  setup do
    @proto = protos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:protos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proto" do
    assert_difference('Proto.count') do
      post :create, proto: { name: @proto.name }
    end

    assert_redirected_to proto_path(assigns(:proto))
  end

  test "should show proto" do
    get :show, id: @proto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proto
    assert_response :success
  end

  test "should update proto" do
    patch :update, id: @proto, proto: { name: @proto.name }
    assert_redirected_to proto_path(assigns(:proto))
  end

  test "should destroy proto" do
    assert_difference('Proto.count', -1) do
      delete :destroy, id: @proto
    end

    assert_redirected_to protos_path
  end
end
