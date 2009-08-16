require 'test_helper'

class FanSessionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fan_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fan_session" do
    assert_difference('FanSession.count') do
      post :create, :fan_session => { }
    end

    assert_redirected_to fan_session_path(assigns(:fan_session))
  end

  test "should show fan_session" do
    get :show, :id => fan_sessions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fan_sessions(:one).to_param
    assert_response :success
  end

  test "should update fan_session" do
    put :update, :id => fan_sessions(:one).to_param, :fan_session => { }
    assert_redirected_to fan_session_path(assigns(:fan_session))
  end

  test "should destroy fan_session" do
    assert_difference('FanSession.count', -1) do
      delete :destroy, :id => fan_sessions(:one).to_param
    end

    assert_redirected_to fan_sessions_path
  end
end
