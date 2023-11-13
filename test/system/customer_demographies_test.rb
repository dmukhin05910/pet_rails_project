require "application_system_test_case"

class CustomerDemographiesTest < ApplicationSystemTestCase
  setup do
    @customer_demography = customer_demographies(:one)
  end

  test "visiting the index" do
    visit customer_demographies_url
    assert_selector "h1", text: "Customer Demographies"
  end

  test "creating a Customer demography" do
    visit customer_demographies_url
    click_on "New Customer Demography"

    click_on "Create Customer demography"

    assert_text "Customer demography was successfully created"
    click_on "Back"
  end

  test "updating a Customer demography" do
    visit customer_demographies_url
    click_on "Edit", match: :first

    click_on "Update Customer demography"

    assert_text "Customer demography was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer demography" do
    visit customer_demographies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer demography was successfully destroyed"
  end
end
