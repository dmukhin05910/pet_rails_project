require "test_helper"

class EmployeeTerritoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_territory = employee_territories(:one)
  end

  test "should get index" do
    get employee_territories_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_territory_url
    assert_response :success
  end

  test "should create employee_territory" do
    assert_difference('EmployeeTerritory.count') do
      post employee_territories_url, params: { employee_territory: {  } }
    end

    assert_redirected_to employee_territory_url(EmployeeTerritory.last)
  end

  test "should show employee_territory" do
    get employee_territory_url(@employee_territory)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_territory_url(@employee_territory)
    assert_response :success
  end

  test "should update employee_territory" do
    patch employee_territory_url(@employee_territory), params: { employee_territory: {  } }
    assert_redirected_to employee_territory_url(@employee_territory)
  end

  test "should destroy employee_territory" do
    assert_difference('EmployeeTerritory.count', -1) do
      delete employee_territory_url(@employee_territory)
    end

    assert_redirected_to employee_territories_url
  end
end
