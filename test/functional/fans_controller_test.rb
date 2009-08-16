require 'test_helper'

class FansControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fan" do
    assert_difference('Fan.count') do
      post :create, :fan => { }
    end

    assert_redirected_to fan_path(assigns(:fan))
  end

  test "should show fan" do
    get :show, :id => fans(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fans(:one).to_param
    assert_response :success
  end

  test "should update fan" do
    put :update, :id => fans(:one).to_param, :fan => { }
    assert_redirected_to fan_path(assigns(:fan))
  end

  test "should destroy fan" do
    assert_difference('Fan.count', -1) do
      delete :destroy, :id => fans(:one).to_param
    end

    assert_redirected_to fans_path
  end
end
