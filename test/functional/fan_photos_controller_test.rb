require 'test_helper'

class FanPhotosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fan_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fan_photo" do
    assert_difference('FanPhoto.count') do
      post :create, :fan_photo => { }
    end

    assert_redirected_to fan_photo_path(assigns(:fan_photo))
  end

  test "should show fan_photo" do
    get :show, :id => fan_photos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fan_photos(:one).to_param
    assert_response :success
  end

  test "should update fan_photo" do
    put :update, :id => fan_photos(:one).to_param, :fan_photo => { }
    assert_redirected_to fan_photo_path(assigns(:fan_photo))
  end

  test "should destroy fan_photo" do
    assert_difference('FanPhoto.count', -1) do
      delete :destroy, :id => fan_photos(:one).to_param
    end

    assert_redirected_to fan_photos_path
  end
end
