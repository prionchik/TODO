require "application_system_test_case"

class DosTest < ApplicationSystemTestCase
  setup do
    @do = dos(:one)
  end

  test "visiting the index" do
    visit dos_url
    assert_selector "h1", text: "Dos"
  end

  test "creating a Do" do
    visit dos_url
    click_on "New Do"

    check "Iscompleted" if @do.isCompleted
    fill_in "Project", with: @do.project_id
    fill_in "Text", with: @do.text
    click_on "Create Do"

    assert_text "Do was successfully created"
    click_on "Back"
  end

  test "updating a Do" do
    visit dos_url
    click_on "Edit", match: :first

    check "Iscompleted" if @do.isCompleted
    fill_in "Project", with: @do.project_id
    fill_in "Text", with: @do.text
    click_on "Update Do"

    assert_text "Do was successfully updated"
    click_on "Back"
  end

  test "destroying a Do" do
    visit dos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Do was successfully destroyed"
  end
end
