require 'test_helper'

class NonusersControllerTest < ActionController::TestCase
  setup do
    @nonuser = nonusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nonusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nonuser" do
    assert_difference('Nonuser.count') do
      post :create, nonuser: @nonuser.attributes
    end

    assert_redirected_to nonuser_path(assigns(:nonuser))
  end

  test "should show nonuser" do
    get :show, id: @nonuser.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nonuser.to_param
    assert_response :success
  end

  test "should update nonuser" do
    put :update, id: @nonuser.to_param, nonuser: @nonuser.attributes
    assert_redirected_to nonuser_path(assigns(:nonuser))
  end

  test "should destroy nonuser" do
    assert_difference('Nonuser.count', -1) do
      delete :destroy, id: @nonuser.to_param
    end

    assert_redirected_to nonusers_path
  end
end
