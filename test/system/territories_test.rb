require "application_system_test_case"

class TerritoriesTest < ApplicationSystemTestCase
  setup do
    @territory = territories(:one)
  end

  test "visiting the index" do
    visit territories_url
    assert_selector "h1", text: "Territories"
  end

  test "creating a Territory" do
    visit territories_url
    click_on "New Territory"

    click_on "Create Territory"

    assert_text "Territory was successfully created"
    click_on "Back"
  end

  test "updating a Territory" do
    visit territories_url
    click_on "Edit", match: :first

    click_on "Update Territory"

    assert_text "Territory was successfully updated"
    click_on "Back"
  end

  test "destroying a Territory" do
    visit territories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Territory was successfully destroyed"
  end
end
