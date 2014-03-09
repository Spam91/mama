require 'test_helper'

class Admin::SurgeonsControllerTest < ActionController::TestCase
  setup do
    @admin_surgeon = admin_surgeons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_surgeons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_surgeon" do
    assert_difference('Admin::Surgeon.count') do
      post :create, admin_surgeon: { code: @admin_surgeon.code, name: @admin_surgeon.name, type: @admin_surgeon.type }
    end

    assert_redirected_to admin_surgeon_path(assigns(:admin_surgeon))
  end

  test "should show admin_surgeon" do
    get :show, id: @admin_surgeon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_surgeon
    assert_response :success
  end

  test "should update admin_surgeon" do
    put :update, id: @admin_surgeon, admin_surgeon: { code: @admin_surgeon.code, name: @admin_surgeon.name, type: @admin_surgeon.type }
    assert_redirected_to admin_surgeon_path(assigns(:admin_surgeon))
  end

  test "should destroy admin_surgeon" do
    assert_difference('Admin::Surgeon.count', -1) do
      delete :destroy, id: @admin_surgeon
    end

    assert_redirected_to admin_surgeons_path
  end
end
