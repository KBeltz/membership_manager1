require 'test_helper'

class BeltsControllerTest < ActionController::TestCase
  setup do
    @belt = belts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:belts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create belt" do
    assert_difference('Belt.count') do
      post :create, belt: { belt_level_id: @belt.belt_level_id, is_active: @belt.is_active, start_date: @belt.start_date, student_id: @belt.student_id }
    end

    assert_redirected_to belt_path(assigns(:belt))
  end

  test "should show belt" do
    get :show, id: @belt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @belt
    assert_response :success
  end

  test "should update belt" do
    patch :update, id: @belt, belt: { belt_level_id: @belt.belt_level_id, is_active: @belt.is_active, start_date: @belt.start_date, student_id: @belt.student_id }
    assert_redirected_to belt_path(assigns(:belt))
  end

  test "should destroy belt" do
    assert_difference('Belt.count', -1) do
      delete :destroy, id: @belt
    end

    assert_redirected_to belts_path
  end
end
