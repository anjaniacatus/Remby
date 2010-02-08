require 'test_helper'

class CompagniesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:compagnies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create compagny" do
    assert_difference('Compagny.count') do
      post :create, :compagny => { }
    end

    assert_redirected_to compagny_path(assigns(:compagny))
  end

  test "should show compagny" do
    get :show, :id => compagnies(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => compagnies(:one).to_param
    assert_response :success
  end

  test "should update compagny" do
    put :update, :id => compagnies(:one).to_param, :compagny => { }
    assert_redirected_to compagny_path(assigns(:compagny))
  end

  test "should destroy compagny" do
    assert_difference('Compagny.count', -1) do
      delete :destroy, :id => compagnies(:one).to_param
    end

    assert_redirected_to compagnies_path
  end
end
