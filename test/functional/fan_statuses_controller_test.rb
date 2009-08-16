require 'test_helper'

class FanStatusesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fan_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fan_status" do
    assert_difference('FanStatus.count') do
      post :create, :fan_status => { }
    end

    assert_redirected_to fan_status_path(assigns(:fan_status))
  end

  test "should show fan_status" do
    get :show, :id => fan_statuses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fan_statuses(:one).to_param
    assert_response :success
  end

  test "should update fan_status" do
    put :update, :id => fan_statuses(:one).to_param, :fan_status => { }
    assert_redirected_to fan_status_path(assigns(:fan_status))
  end

  test "should destroy fan_status" do
    assert_difference('FanStatus.count', -1) do
      delete :destroy, :id => fan_statuses(:one).to_param
    end

    assert_redirected_to fan_statuses_path
  end
end
