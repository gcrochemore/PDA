require 'test_helper'

class VehicleKilometricStatementsControllerTest < ActionController::TestCase
  setup do
    @vehicle_kilometric_statement = vehicle_kilometric_statements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_kilometric_statements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_kilometric_statement" do
    assert_difference('VehicleKilometricStatement.count') do
      post :create, vehicle_kilometric_statement: { date: @vehicle_kilometric_statement.date, mileage: @vehicle_kilometric_statement.mileage, use_duration: @vehicle_kilometric_statement.use_duration, vehicle_id: @vehicle_kilometric_statement.vehicle_id }
    end

    assert_redirected_to vehicle_kilometric_statement_path(assigns(:vehicle_kilometric_statement))
  end

  test "should show vehicle_kilometric_statement" do
    get :show, id: @vehicle_kilometric_statement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle_kilometric_statement
    assert_response :success
  end

  test "should update vehicle_kilometric_statement" do
    patch :update, id: @vehicle_kilometric_statement, vehicle_kilometric_statement: { date: @vehicle_kilometric_statement.date, mileage: @vehicle_kilometric_statement.mileage, use_duration: @vehicle_kilometric_statement.use_duration, vehicle_id: @vehicle_kilometric_statement.vehicle_id }
    assert_redirected_to vehicle_kilometric_statement_path(assigns(:vehicle_kilometric_statement))
  end

  test "should destroy vehicle_kilometric_statement" do
    assert_difference('VehicleKilometricStatement.count', -1) do
      delete :destroy, id: @vehicle_kilometric_statement
    end

    assert_redirected_to vehicle_kilometric_statements_path
  end
end
