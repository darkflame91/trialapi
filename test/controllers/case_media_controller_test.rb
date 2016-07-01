require 'test_helper'

class CaseMediaControllerTest < ActionController::TestCase
  setup do
    @case_medium = case_media(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:case_media)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create case_medium" do
    assert_difference('CaseMedium.count') do
      post :create, case_medium: { case_id: @case_medium.case_id, has_attachment: @case_medium.has_attachment, mediacode: @case_medium.mediacode, mediatype_id: @case_medium.mediatype_id }
    end

    assert_redirected_to case_medium_path(assigns(:case_medium))
  end

  test "should show case_medium" do
    get :show, id: @case_medium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @case_medium
    assert_response :success
  end

  test "should update case_medium" do
    patch :update, id: @case_medium, case_medium: { case_id: @case_medium.case_id, has_attachment: @case_medium.has_attachment, mediacode: @case_medium.mediacode, mediatype_id: @case_medium.mediatype_id }
    assert_redirected_to case_medium_path(assigns(:case_medium))
  end

  test "should destroy case_medium" do
    assert_difference('CaseMedium.count', -1) do
      delete :destroy, id: @case_medium
    end

    assert_redirected_to case_media_path
  end
end
