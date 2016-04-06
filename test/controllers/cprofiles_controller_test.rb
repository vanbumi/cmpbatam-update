require 'test_helper'

class CprofilesControllerTest < ActionController::TestCase
  setup do
    @cprofile = cprofiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cprofiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cprofile" do
    assert_difference('Cprofile.count') do
      post :create, cprofile: { company_address: @cprofile.company_address, company_description: @cprofile.company_description, company_logo: @cprofile.company_logo, company_mail: @cprofile.company_mail, company_name: @cprofile.company_name, company_owner: @cprofile.company_owner, company_phone: @cprofile.company_phone, company_web: @cprofile.company_web }
    end

    assert_redirected_to cprofile_path(assigns(:cprofile))
  end

  test "should show cprofile" do
    get :show, id: @cprofile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cprofile
    assert_response :success
  end

  test "should update cprofile" do
    patch :update, id: @cprofile, cprofile: { company_address: @cprofile.company_address, company_description: @cprofile.company_description, company_logo: @cprofile.company_logo, company_mail: @cprofile.company_mail, company_name: @cprofile.company_name, company_owner: @cprofile.company_owner, company_phone: @cprofile.company_phone, company_web: @cprofile.company_web }
    assert_redirected_to cprofile_path(assigns(:cprofile))
  end

  test "should destroy cprofile" do
    assert_difference('Cprofile.count', -1) do
      delete :destroy, id: @cprofile
    end

    assert_redirected_to cprofiles_path
  end
end
