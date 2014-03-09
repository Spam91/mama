require 'test_helper'

class Admin::NameOperationsControllerTest < ActionController::TestCase
  setup do
    @admin_name_operation = admin_name_operations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_name_operations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_name_operation" do
    assert_difference('Admin::NameOperation.count') do
      post :create, admin_name_operation: { code: @admin_name_operation.code, name: @admin_name_operation.name }
    end

    assert_redirected_to admin_name_operation_path(assigns(:admin_name_operation))
  end

  test "should show admin_name_operation" do
    get :show, id: @admin_name_operation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_name_operation
    assert_response :success
  end

  test "should update admin_name_operation" do
    put :update, id: @admin_name_operation, admin_name_operation: { code: @admin_name_operation.code, name: @admin_name_operation.name }
    assert_redirected_to admin_name_operation_path(assigns(:admin_name_operation))
  end

  test "should destroy admin_name_operation" do
    assert_difference('Admin::NameOperation.count', -1) do
      delete :destroy, id: @admin_name_operation
    end

    assert_redirected_to admin_name_operations_path
  end
end
