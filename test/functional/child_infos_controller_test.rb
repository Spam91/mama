require 'test_helper'

class ChildInfosControllerTest < ActionController::TestCase
  setup do
    @child_info = child_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:child_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child_info" do
    assert_difference('ChildInfo.count') do
      post :create, child_info: {  }
    end

    assert_redirected_to child_info_path(assigns(:child_info))
  end

  test "should show child_info" do
    get :show, id: @child_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @child_info
    assert_response :success
  end

  test "should update child_info" do
    put :update, id: @child_info, child_info: {  }
    assert_redirected_to child_info_path(assigns(:child_info))
  end

  test "should destroy child_info" do
    assert_difference('ChildInfo.count', -1) do
      delete :destroy, id: @child_info
    end

    assert_redirected_to child_infos_path
  end
end
