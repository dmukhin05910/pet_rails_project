require "application_system_test_case"

class CustCustDemographiesTest < ApplicationSystemTestCase
  setup do
    @cust_cust_demography = cust_cust_demographies(:one)
  end

  test "visiting the index" do
    visit cust_cust_demographies_url
    assert_selector "h1", text: "Cust Cust Demographies"
  end

  test "creating a Cust cust demography" do
    visit cust_cust_demographies_url
    click_on "New Cust Cust Demography"

    click_on "Create Cust cust demography"

    assert_text "Cust cust demography was successfully created"
    click_on "Back"
  end

  test "updating a Cust cust demography" do
    visit cust_cust_demographies_url
    click_on "Edit", match: :first

    click_on "Update Cust cust demography"

    assert_text "Cust cust demography was successfully updated"
    click_on "Back"
  end

  test "destroying a Cust cust demography" do
    visit cust_cust_demographies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cust cust demography was successfully destroyed"
  end
end
