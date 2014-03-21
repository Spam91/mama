require 'test_helper'

class ChildFatherBloodsControllerTest < ActionController::TestCase
  setup do
    @child_father_blood = child_father_bloods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:child_father_bloods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child_father_blood" do
    assert_difference('ChildFatherBlood.count') do
      post :create, child_father_blood: { number: @child_father_blood.number, plusminus: @child_father_blood.plusminus }
    end

    assert_redirected_to child_father_blood_path(assigns(:child_father_blood))
  end

  test "should show child_father_blood" do
    get :show, id: @child_father_blood
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @child_father_blood
    assert_response :success
  end

  test "should update child_father_blood" do
    put :update, id: @child_father_blood, child_father_blood: { number: @child_father_blood.number, plusminus: @child_father_blood.plusminus }
    assert_redirected_to child_father_blood_path(assigns(:child_father_blood))
  end

  test "should destroy child_father_blood" do
    assert_difference('ChildFatherBlood.count', -1) do
      delete :destroy, id: @child_father_blood
    end

    assert_redirected_to child_father_bloods_path
  end
end
