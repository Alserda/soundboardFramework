require 'test_helper'

class SoundboardsControllerTest < ActionController::TestCase
  setup do
    @soundboard = soundboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soundboards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soundboard" do
    assert_difference('Soundboard.count') do
      post :create, soundboard: {  }
    end

    assert_redirected_to soundboard_path(assigns(:soundboard))
  end

  test "should show soundboard" do
    get :show, id: @soundboard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soundboard
    assert_response :success
  end

  test "should update soundboard" do
    patch :update, id: @soundboard, soundboard: {  }
    assert_redirected_to soundboard_path(assigns(:soundboard))
  end

  test "should destroy soundboard" do
    assert_difference('Soundboard.count', -1) do
      delete :destroy, id: @soundboard
    end

    assert_redirected_to soundboards_path
  end
end
