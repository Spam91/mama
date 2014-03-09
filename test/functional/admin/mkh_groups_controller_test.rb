require 'test_helper'

class Admin::MkhGroupsControllerTest < ActionController::TestCase
  setup do
    @admin_mkh_group = admin_mkh_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_mkh_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_mkh_group" do
    assert_difference('Admin::MkhGroup.count') do
      post :create, admin_mkh_group: { code: @admin_mkh_group.code, name: @admin_mkh_group.name }
    end

    assert_redirected_to admin_mkh_group_path(assigns(:admin_mkh_group))
  end

  test "should show admin_mkh_group" do
    get :show, id: @admin_mkh_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_mkh_group
    assert_response :success
  end

  test "should update admin_mkh_group" do
    put :update, id: @admin_mkh_group, admin_mkh_group: { code: @admin_mkh_group.code, name: @admin_mkh_group.name }
    assert_redirected_to admin_mkh_group_path(assigns(:admin_mkh_group))
  end

  test "should destroy admin_mkh_group" do
    assert_difference('Admin::MkhGroup.count', -1) do
      delete :destroy, id: @admin_mkh_group
    end

    assert_redirected_to admin_mkh_groups_path
  end
end
