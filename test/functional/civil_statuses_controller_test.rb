require 'test_helper'

class CivilStatusesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:civil_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create civil_status" do
    assert_difference('CivilStatus.count') do
      post :create, :civil_status => { }
    end

    assert_redirected_to civil_status_path(assigns(:civil_status))
  end

  test "should show civil_status" do
    get :show, :id => civil_statuses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => civil_statuses(:one).to_param
    assert_response :success
  end

  test "should update civil_status" do
    put :update, :id => civil_statuses(:one).to_param, :civil_status => { }
    assert_redirected_to civil_status_path(assigns(:civil_status))
  end

  test "should destroy civil_status" do
    assert_difference('CivilStatus.count', -1) do
      delete :destroy, :id => civil_statuses(:one).to_param
    end

    assert_redirected_to civil_statuses_path
  end
end
