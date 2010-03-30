require 'test_helper'

class ContactInfosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_info" do
    assert_difference('ContactInfo.count') do
      post :create, :contact_info => { }
    end

    assert_redirected_to contact_info_path(assigns(:contact_info))
  end

  test "should show contact_info" do
    get :show, :id => contact_infos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => contact_infos(:one).to_param
    assert_response :success
  end

  test "should update contact_info" do
    put :update, :id => contact_infos(:one).to_param, :contact_info => { }
    assert_redirected_to contact_info_path(assigns(:contact_info))
  end

  test "should destroy contact_info" do
    assert_difference('ContactInfo.count', -1) do
      delete :destroy, :id => contact_infos(:one).to_param
    end

    assert_redirected_to contact_infos_path
  end
end
