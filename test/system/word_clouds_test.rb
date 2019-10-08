require "application_system_test_case"

class WordCloudsTest < ApplicationSystemTestCase
  setup do
    @word_cloud = word_clouds(:one)
  end

  test "visiting the index" do
    visit word_clouds_url
    assert_selector "h1", text: "Word Clouds"
  end

  test "creating a Word cloud" do
    visit word_clouds_url
    click_on "New Word Cloud"

    click_on "Create Word cloud"

    assert_text "Word cloud was successfully created"
    click_on "Back"
  end

  test "updating a Word cloud" do
    visit word_clouds_url
    click_on "Edit", match: :first

    click_on "Update Word cloud"

    assert_text "Word cloud was successfully updated"
    click_on "Back"
  end

  test "destroying a Word cloud" do
    visit word_clouds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Word cloud was successfully destroyed"
  end
end
