require 'test_helper'

class FanPhotoAlbumsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fan_photo_albums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fan_photo_album" do
    assert_difference('FanPhotoAlbum.count') do
      post :create, :fan_photo_album => { }
    end

    assert_redirected_to fan_photo_album_path(assigns(:fan_photo_album))
  end

  test "should show fan_photo_album" do
    get :show, :id => fan_photo_albums(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fan_photo_albums(:one).to_param
    assert_response :success
  end

  test "should update fan_photo_album" do
    put :update, :id => fan_photo_albums(:one).to_param, :fan_photo_album => { }
    assert_redirected_to fan_photo_album_path(assigns(:fan_photo_album))
  end

  test "should destroy fan_photo_album" do
    assert_difference('FanPhotoAlbum.count', -1) do
      delete :destroy, :id => fan_photo_albums(:one).to_param
    end

    assert_redirected_to fan_photo_albums_path
  end
end
