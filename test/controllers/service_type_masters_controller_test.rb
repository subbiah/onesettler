require 'test_helper'

class ServiceTypeMastersControllerTest < ActionController::TestCase
  setup do
    @service_type_master = service_type_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_type_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_type_master" do
    assert_difference('ServiceTypeMaster.count') do
      post :create, service_type_master: {  }
    end

    assert_redirected_to service_type_master_path(assigns(:service_type_master))
  end

  test "should show service_type_master" do
    get :show, id: @service_type_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_type_master
    assert_response :success
  end

  test "should update service_type_master" do
    patch :update, id: @service_type_master, service_type_master: {  }
    assert_redirected_to service_type_master_path(assigns(:service_type_master))
  end

  test "should destroy service_type_master" do
    assert_difference('ServiceTypeMaster.count', -1) do
      delete :destroy, id: @service_type_master
    end

    assert_redirected_to service_type_masters_path
  end
end
