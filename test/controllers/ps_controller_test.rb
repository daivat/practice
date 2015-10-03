require 'test_helper'

class PsControllerTest < ActionController::TestCase
  setup do
    @p = ps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p" do
    assert_difference('P.count') do
      post :create, p: { description: @p.description }
    end

    assert_redirected_to p_path(assigns(:p))
  end

  test "should show p" do
    get :show, id: @p
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p
    assert_response :success
  end

  test "should update p" do
    patch :update, id: @p, p: { description: @p.description }
    assert_redirected_to p_path(assigns(:p))
  end

  test "should destroy p" do
    assert_difference('P.count', -1) do
      delete :destroy, id: @p
    end

    assert_redirected_to ps_path
  end
end
