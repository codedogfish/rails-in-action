require 'test_helper'

class ProviderInfosControllerTest < ActionController::TestCase
  setup do
    @provider_info = provider_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provider_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provider_info" do
    assert_difference('ProviderInfo.count') do
      post :create, provider_info: { Address: @provider_info.Address, Email: @provider_info.Email, conPerson: @provider_info.conPerson, conPhoneNum: @provider_info.conPhoneNum, conPost: @provider_info.conPost, pname: @provider_info.pname }
    end

    assert_redirected_to provider_info_path(assigns(:provider_info))
  end

  test "should show provider_info" do
    get :show, id: @provider_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @provider_info
    assert_response :success
  end

  test "should update provider_info" do
    patch :update, id: @provider_info, provider_info: { Address: @provider_info.Address, Email: @provider_info.Email, conPerson: @provider_info.conPerson, conPhoneNum: @provider_info.conPhoneNum, conPost: @provider_info.conPost, pname: @provider_info.pname }
    assert_redirected_to provider_info_path(assigns(:provider_info))
  end

  test "should destroy provider_info" do
    assert_difference('ProviderInfo.count', -1) do
      delete :destroy, id: @provider_info
    end

    assert_redirected_to provider_infos_path
  end
end
