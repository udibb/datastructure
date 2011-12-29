require 'test_helper'

class ConfirmsControllerTest < ActionController::TestCase
  setup do
    @confirm = confirms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:confirms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create confirm" do
    assert_difference('Confirm.count') do
      post :create, confirm: @confirm.attributes
    end

    assert_redirected_to confirm_path(assigns(:confirm))
  end

  test "should show confirm" do
    get :show, id: @confirm.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @confirm.to_param
    assert_response :success
  end

  test "should update confirm" do
    put :update, id: @confirm.to_param, confirm: @confirm.attributes
    assert_redirected_to confirm_path(assigns(:confirm))
  end

  test "should destroy confirm" do
    assert_difference('Confirm.count', -1) do
      delete :destroy, id: @confirm.to_param
    end

    assert_redirected_to confirms_path
  end
end
