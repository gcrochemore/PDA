require 'test_helper'

class VehicleFuelIntakesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_fuel_intake = vehicle_fuel_intakes(:one)
  end

  test "should get index" do
    get vehicle_fuel_intakes_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_fuel_intake_url
    assert_response :success
  end

  test "should create vehicle_fuel_intake" do
    assert_difference('VehicleFuelIntake.count') do
      post vehicle_fuel_intakes_url, params: { vehicle_fuel_intake: { amount: @vehicle_fuel_intake.amount, date: @vehicle_fuel_intake.date, vehicle_id: @vehicle_fuel_intake.vehicle_id, volume: @vehicle_fuel_intake.volume } }
    end

    assert_redirected_to vehicle_fuel_intake_url(VehicleFuelIntake.last)
  end

  test "should show vehicle_fuel_intake" do
    get vehicle_fuel_intake_url(@vehicle_fuel_intake)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_fuel_intake_url(@vehicle_fuel_intake)
    assert_response :success
  end

  test "should update vehicle_fuel_intake" do
    patch vehicle_fuel_intake_url(@vehicle_fuel_intake), params: { vehicle_fuel_intake: { amount: @vehicle_fuel_intake.amount, date: @vehicle_fuel_intake.date, vehicle_id: @vehicle_fuel_intake.vehicle_id, volume: @vehicle_fuel_intake.volume } }
    assert_redirected_to vehicle_fuel_intake_url(@vehicle_fuel_intake)
  end

  test "should destroy vehicle_fuel_intake" do
    assert_difference('VehicleFuelIntake.count', -1) do
      delete vehicle_fuel_intake_url(@vehicle_fuel_intake)
    end

    assert_redirected_to vehicle_fuel_intakes_url
  end
end
