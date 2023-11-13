require "application_system_test_case"

class CustCustDemographicsTest < ApplicationSystemTestCase
  setup do
    @cust_cust_demographic = cust_cust_demographics(:one)
  end

  test "visiting the index" do
    visit cust_cust_demographics_url
    assert_selector "h1", text: "Cust Cust Demographics"
  end

  test "creating a Cust cust demographic" do
    visit cust_cust_demographics_url
    click_on "New Cust Cust Demographic"

    click_on "Create Cust cust demographic"

    assert_text "Cust cust demographic was successfully created"
    click_on "Back"
  end

  test "updating a Cust cust demographic" do
    visit cust_cust_demographics_url
    click_on "Edit", match: :first

    click_on "Update Cust cust demographic"

    assert_text "Cust cust demographic was successfully updated"
    click_on "Back"
  end

  test "destroying a Cust cust demographic" do
    visit cust_cust_demographics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cust cust demographic was successfully destroyed"
  end
end
