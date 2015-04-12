require 'test_helper'

class ProductProfilesControllerTest < ActionController::TestCase
  setup do
    @product_profile = product_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_profile" do
    assert_difference('ProductProfile.count') do
      post :create, product_profile: { name: @product_profile.name }
    end

    assert_redirected_to product_profile_path(assigns(:product_profile))
  end

  test "should show product_profile" do
    get :show, id: @product_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_profile
    assert_response :success
  end

  test "should update product_profile" do
    patch :update, id: @product_profile, product_profile: { name: @product_profile.name }
    assert_redirected_to product_profile_path(assigns(:product_profile))
  end

  test "should destroy product_profile" do
    assert_difference('ProductProfile.count', -1) do
      delete :destroy, id: @product_profile
    end

    assert_redirected_to product_profiles_path
  end
end
