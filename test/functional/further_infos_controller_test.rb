require 'test_helper'

class FurtherInfosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:further_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create further_info" do
    assert_difference('FurtherInfo.count') do
      post :create, :further_info => { }
    end

    assert_redirected_to further_info_path(assigns(:further_info))
  end

  test "should show further_info" do
    get :show, :id => further_infos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => further_infos(:one).to_param
    assert_response :success
  end

  test "should update further_info" do
    put :update, :id => further_infos(:one).to_param, :further_info => { }
    assert_redirected_to further_info_path(assigns(:further_info))
  end

  test "should destroy further_info" do
    assert_difference('FurtherInfo.count', -1) do
      delete :destroy, :id => further_infos(:one).to_param
    end

    assert_redirected_to further_infos_path
  end
end
