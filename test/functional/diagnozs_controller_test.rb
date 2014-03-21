require 'test_helper'

class DiagnozsControllerTest < ActionController::TestCase
  setup do
    @diagnoz = diagnozs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diagnozs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diagnoz" do
    assert_difference('Diagnoz.count') do
      post :create, diagnoz: { tipdia: @diagnoz.tipdia }
    end

    assert_redirected_to diagnoz_path(assigns(:diagnoz))
  end

  test "should show diagnoz" do
    get :show, id: @diagnoz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diagnoz
    assert_response :success
  end

  test "should update diagnoz" do
    put :update, id: @diagnoz, diagnoz: { tipdia: @diagnoz.tipdia }
    assert_redirected_to diagnoz_path(assigns(:diagnoz))
  end

  test "should destroy diagnoz" do
    assert_difference('Diagnoz.count', -1) do
      delete :destroy, id: @diagnoz
    end

    assert_redirected_to diagnozs_path
  end
end
