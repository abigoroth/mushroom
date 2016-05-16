require 'test_helper'

class Production2sControllerTest < ActionController::TestCase
  setup do
    @production2 = production2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:production2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create production2" do
    assert_difference('Production2.count') do
      post :create, production2: { am: @production2.am, date: @production2.date, house_id: @production2.house_id, pm: @production2.pm }
    end

    assert_redirected_to production2_path(assigns(:production2))
  end

  test "should show production2" do
    get :show, id: @production2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @production2
    assert_response :success
  end

  test "should update production2" do
    patch :update, id: @production2, production2: { am: @production2.am, date: @production2.date, house_id: @production2.house_id, pm: @production2.pm }
    assert_redirected_to production2_path(assigns(:production2))
  end

  test "should destroy production2" do
    assert_difference('Production2.count', -1) do
      delete :destroy, id: @production2
    end

    assert_redirected_to production2s_path
  end
end
