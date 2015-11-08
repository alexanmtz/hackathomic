require 'test_helper'

class FrameworksControllerTest < ActionController::TestCase
  setup do
    @framework = frameworks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frameworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create framework" do
    assert_difference('Framework.count') do
      post :create, framework: { name: @framework.name }
    end

    assert_redirected_to framework_path(assigns(:framework))
  end

  test "should show framework" do
    get :show, id: @framework
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @framework
    assert_response :success
  end

  test "should update framework" do
    patch :update, id: @framework, framework: { name: @framework.name }
    assert_redirected_to framework_path(assigns(:framework))
  end

  test "should destroy framework" do
    assert_difference('Framework.count', -1) do
      delete :destroy, id: @framework
    end

    assert_redirected_to frameworks_path
  end
end
