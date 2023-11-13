require "application_system_test_case"

class EmployeeTerritoriesTest < ApplicationSystemTestCase
  setup do
    @employee_territory = employee_territories(:one)
  end

  test "visiting the index" do
    visit employee_territories_url
    assert_selector "h1", text: "Employee Territories"
  end

  test "creating a Employee territory" do
    visit employee_territories_url
    click_on "New Employee Territory"

    click_on "Create Employee territory"

    assert_text "Employee territory was successfully created"
    click_on "Back"
  end

  test "updating a Employee territory" do
    visit employee_territories_url
    click_on "Edit", match: :first

    click_on "Update Employee territory"

    assert_text "Employee territory was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee territory" do
    visit employee_territories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee territory was successfully destroyed"
  end
end
