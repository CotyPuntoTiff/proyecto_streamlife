require "application_system_test_case"

class ComentsTest < ApplicationSystemTestCase
  setup do
    @coment = coments(:one)
  end

  test "visiting the index" do
    visit coments_url
    assert_selector "h1", text: "Coments"
  end

  test "creating a Coment" do
    visit coments_url
    click_on "New Coment"

    fill_in "Content", with: @coment.content
    fill_in "Post", with: @coment.post_id
    fill_in "User", with: @coment.user_id
    click_on "Create Coment"

    assert_text "Coment was successfully created"
    click_on "Back"
  end

  test "updating a Coment" do
    visit coments_url
    click_on "Edit", match: :first

    fill_in "Content", with: @coment.content
    fill_in "Post", with: @coment.post_id
    fill_in "User", with: @coment.user_id
    click_on "Update Coment"

    assert_text "Coment was successfully updated"
    click_on "Back"
  end

  test "destroying a Coment" do
    visit coments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coment was successfully destroyed"
  end
end
