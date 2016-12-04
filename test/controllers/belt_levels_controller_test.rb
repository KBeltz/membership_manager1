require 'test_helper'

class BeltLevelsControllerTest < ActionController::TestCase
  setup do
    @belt_level = belt_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:belt_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create belt_level" do
    assert_difference('BeltLevel.count') do
      post :create, belt_level: { name: @belt_level.name }
    end

    assert_redirected_to belt_level_path(assigns(:belt_level))
  end

  test "should show belt_level" do
    get :show, id: @belt_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @belt_level
    assert_response :success
  end

  test "should update belt_level" do
    patch :update, id: @belt_level, belt_level: { name: @belt_level.name }
    assert_redirected_to belt_level_path(assigns(:belt_level))
  end

  test "should destroy belt_level" do
    assert_difference('BeltLevel.count', -1) do
      delete :destroy, id: @belt_level
    end

    assert_redirected_to belt_levels_path
  end
end
