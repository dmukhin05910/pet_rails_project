require "application_system_test_case"

class CustomerDemographicsTest < ApplicationSystemTestCase
  setup do
    @customer_demographic = customer_demographics(:one)
  end

  test "visiting the index" do
    visit customer_demographics_url
    assert_selector "h1", text: "Customer Demographics"
  end

  test "creating a Customer demographic" do
    visit customer_demographics_url
    click_on "New Customer Demographic"

    click_on "Create Customer demographic"

    assert_text "Customer demographic was successfully created"
    click_on "Back"
  end

  test "updating a Customer demographic" do
    visit customer_demographics_url
    click_on "Edit", match: :first

    click_on "Update Customer demographic"

    assert_text "Customer demographic was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer demographic" do
    visit customer_demographics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer demographic was successfully destroyed"
  end
end
