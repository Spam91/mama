require 'test_helper'

class Admin::NameZnebolsControllerTest < ActionController::TestCase
  setup do
    @admin_name_znebol = admin_name_znebols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_name_znebols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_name_znebol" do
    assert_difference('Admin::NameZnebol.count') do
      post :create, admin_name_znebol: { code: @admin_name_znebol.code, name: @admin_name_znebol.name }
    end

    assert_redirected_to admin_name_znebol_path(assigns(:admin_name_znebol))
  end

  test "should show admin_name_znebol" do
    get :show, id: @admin_name_znebol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_name_znebol
    assert_response :success
  end

  test "should update admin_name_znebol" do
    put :update, id: @admin_name_znebol, admin_name_znebol: { code: @admin_name_znebol.code, name: @admin_name_znebol.name }
    assert_redirected_to admin_name_znebol_path(assigns(:admin_name_znebol))
  end

  test "should destroy admin_name_znebol" do
    assert_difference('Admin::NameZnebol.count', -1) do
      delete :destroy, id: @admin_name_znebol
    end

    assert_redirected_to admin_name_znebols_path
  end
end
