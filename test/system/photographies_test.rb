require "application_system_test_case"

class PhotographiesTest < ApplicationSystemTestCase
  setup do
    @photography = photographies(:one)
  end

  test "visiting the index" do
    visit photographies_url
    assert_selector "h1", text: "Photographies"
  end

  test "should create photography" do
    visit photographies_url
    click_on "New photography"

    fill_in "Content", with: @photography.content
    fill_in "Photo", with: @photography.photo
    fill_in "User", with: @photography.user_id
    click_on "Create Photography"

    assert_text "Photography was successfully created"
    click_on "Back"
  end

  test "should update Photography" do
    visit photography_url(@photography)
    click_on "Edit this photography", match: :first

    fill_in "Content", with: @photography.content
    fill_in "Photo", with: @photography.photo
    fill_in "User", with: @photography.user_id
    click_on "Update Photography"

    assert_text "Photography was successfully updated"
    click_on "Back"
  end

  test "should destroy Photography" do
    visit photography_url(@photography)
    click_on "Destroy this photography", match: :first

    assert_text "Photography was successfully destroyed"
  end
end
