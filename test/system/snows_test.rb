require "application_system_test_case"

class SnowsTest < ApplicationSystemTestCase
  setup do
    @snow = snows(:one)
  end

  test "visiting the index" do
    visit snows_url
    assert_selector "h1", text: "Snows"
  end

  test "creating a Snow" do
    visit snows_url
    click_on "New Snow"

    fill_in "Water", with: @snow.water
    click_on "Create Snow"

    assert_text "Snow was successfully created"
    click_on "Back"
  end

  test "updating a Snow" do
    visit snows_url
    click_on "Edit", match: :first

    fill_in "Water", with: @snow.water
    click_on "Update Snow"

    assert_text "Snow was successfully updated"
    click_on "Back"
  end

  test "destroying a Snow" do
    visit snows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Snow was successfully destroyed"
  end
end
