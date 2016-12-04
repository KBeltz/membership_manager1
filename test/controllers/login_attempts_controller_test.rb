require 'test_helper'

class LoginAttemptsControllerTest < ActionController::TestCase
  setup do
    @login_attempt = login_attempts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:login_attempts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create login_attempt" do
    assert_difference('LoginAttempt.count') do
      post :create, login_attempt: { ip_address: @login_attempt.ip_address, is_successful: @login_attempt.is_successful, user_id: @login_attempt.user_id }
    end

    assert_redirected_to login_attempt_path(assigns(:login_attempt))
  end

  test "should show login_attempt" do
    get :show, id: @login_attempt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @login_attempt
    assert_response :success
  end

  test "should update login_attempt" do
    patch :update, id: @login_attempt, login_attempt: { ip_address: @login_attempt.ip_address, is_successful: @login_attempt.is_successful, user_id: @login_attempt.user_id }
    assert_redirected_to login_attempt_path(assigns(:login_attempt))
  end

  test "should destroy login_attempt" do
    assert_difference('LoginAttempt.count', -1) do
      delete :destroy, id: @login_attempt
    end

    assert_redirected_to login_attempts_path
  end
end
