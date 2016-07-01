require 'test_helper'

class CaseDoctorsControllerTest < ActionController::TestCase
  setup do
    @case_doctor = case_doctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:case_doctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create case_doctor" do
    assert_difference('CaseDoctor.count') do
      post :create, case_doctor: { case_id: @case_doctor.case_id, doctor_id: @case_doctor.doctor_id }
    end

    assert_redirected_to case_doctor_path(assigns(:case_doctor))
  end

  test "should show case_doctor" do
    get :show, id: @case_doctor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @case_doctor
    assert_response :success
  end

  test "should update case_doctor" do
    patch :update, id: @case_doctor, case_doctor: { case_id: @case_doctor.case_id, doctor_id: @case_doctor.doctor_id }
    assert_redirected_to case_doctor_path(assigns(:case_doctor))
  end

  test "should destroy case_doctor" do
    assert_difference('CaseDoctor.count', -1) do
      delete :destroy, id: @case_doctor
    end

    assert_redirected_to case_doctors_path
  end
end
