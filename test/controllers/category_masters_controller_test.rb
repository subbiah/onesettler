require 'test_helper'

class CategoryMastersControllerTest < ActionController::TestCase
  setup do
    @category_master = category_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_master" do
    assert_difference('CategoryMaster.count') do
      post :create, category_master: { categoryname: @category_master.categoryname }
    end

    assert_redirected_to category_master_path(assigns(:category_master))
  end

  test "should show category_master" do
    get :show, id: @category_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_master
    assert_response :success
  end

  test "should update category_master" do
    patch :update, id: @category_master, category_master: { categoryname: @category_master.categoryname }
    assert_redirected_to category_master_path(assigns(:category_master))
  end

  test "should destroy category_master" do
    assert_difference('CategoryMaster.count', -1) do
      delete :destroy, id: @category_master
    end

    assert_redirected_to category_masters_path
  end
end
