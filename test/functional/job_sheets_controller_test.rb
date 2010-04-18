require 'test_helper'

class JobSheetsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_sheet" do
    assert_difference('JobSheet.count') do
      post :create, :job_sheet => { }
    end

    assert_redirected_to job_sheet_path(assigns(:job_sheet))
  end

  test "should show job_sheet" do
    get :show, :id => job_sheets(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => job_sheets(:one).to_param
    assert_response :success
  end

  test "should update job_sheet" do
    put :update, :id => job_sheets(:one).to_param, :job_sheet => { }
    assert_redirected_to job_sheet_path(assigns(:job_sheet))
  end

  test "should destroy job_sheet" do
    assert_difference('JobSheet.count', -1) do
      delete :destroy, :id => job_sheets(:one).to_param
    end

    assert_redirected_to job_sheets_path
  end
end
