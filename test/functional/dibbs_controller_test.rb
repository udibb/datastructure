require 'test_helper'

class DibbsControllerTest < ActionController::TestCase
  setup do
    @dibb = dibbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dibbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dibb" do
    assert_difference('Dibb.count') do
      post :create, dibb: @dibb.attributes
    end

    assert_redirected_to dibb_path(assigns(:dibb))
  end

  test "should show dibb" do
    get :show, id: @dibb.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dibb.to_param
    assert_response :success
  end

  test "should update dibb" do
    put :update, id: @dibb.to_param, dibb: @dibb.attributes
    assert_redirected_to dibb_path(assigns(:dibb))
  end

  test "should destroy dibb" do
    assert_difference('Dibb.count', -1) do
      delete :destroy, id: @dibb.to_param
    end

    assert_redirected_to dibbs_path
  end
end
