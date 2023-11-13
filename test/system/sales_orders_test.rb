require "application_system_test_case"

class SalesOrdersTest < ApplicationSystemTestCase
  setup do
    @sales_order = sales_orders(:one)
  end

  test "visiting the index" do
    visit sales_orders_url
    assert_selector "h1", text: "Sales Orders"
  end

  test "creating a Sales order" do
    visit sales_orders_url
    click_on "New Sales Order"

    click_on "Create Sales order"

    assert_text "Sales order was successfully created"
    click_on "Back"
  end

  test "updating a Sales order" do
    visit sales_orders_url
    click_on "Edit", match: :first

    click_on "Update Sales order"

    assert_text "Sales order was successfully updated"
    click_on "Back"
  end

  test "destroying a Sales order" do
    visit sales_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sales order was successfully destroyed"
  end
end
