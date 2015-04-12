require 'test_helper'

class ProfileQuestionMastersControllerTest < ActionController::TestCase
  setup do
    @profile_question_master = profile_question_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profile_question_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile_question_master" do
    assert_difference('ProfileQuestionMaster.count') do
      post :create, profile_question_master: { max_length: @profile_question_master.max_length, min_length: @profile_question_master.min_length, question_type: @profile_question_master.question_type, questionname: @profile_question_master.questionname, section_id: @profile_question_master.section_id }
    end

    assert_redirected_to profile_question_master_path(assigns(:profile_question_master))
  end

  test "should show profile_question_master" do
    get :show, id: @profile_question_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile_question_master
    assert_response :success
  end

  test "should update profile_question_master" do
    patch :update, id: @profile_question_master, profile_question_master: { max_length: @profile_question_master.max_length, min_length: @profile_question_master.min_length, question_type: @profile_question_master.question_type, questionname: @profile_question_master.questionname, section_id: @profile_question_master.section_id }
    assert_redirected_to profile_question_master_path(assigns(:profile_question_master))
  end

  test "should destroy profile_question_master" do
    assert_difference('ProfileQuestionMaster.count', -1) do
      delete :destroy, id: @profile_question_master
    end

    assert_redirected_to profile_question_masters_path
  end
end
