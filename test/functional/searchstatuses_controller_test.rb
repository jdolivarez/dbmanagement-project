require 'test_helper'

class SearchstatusesControllerTest < ActionController::TestCase
  setup do
    @searchstatus = searchstatuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:searchstatuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create searchstatus" do
    assert_difference('Searchstatus.count') do
      post :create, searchstatus: { status: @searchstatus.status }
    end

    assert_redirected_to searchstatus_path(assigns(:searchstatus))
  end

  test "should show searchstatus" do
    get :show, id: @searchstatus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @searchstatus
    assert_response :success
  end

  test "should update searchstatus" do
    put :update, id: @searchstatus, searchstatus: { status: @searchstatus.status }
    assert_redirected_to searchstatus_path(assigns(:searchstatus))
  end

  test "should destroy searchstatus" do
    assert_difference('Searchstatus.count', -1) do
      delete :destroy, id: @searchstatus
    end

    assert_redirected_to searchstatuses_path
  end
end
