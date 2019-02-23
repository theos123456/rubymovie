require "application_system_test_case"

class ResumesTest < ApplicationSystemTestCase
  setup do
    @resume = resumes(:one)
  end

  test "visiting the index" do
    visit resumes_url
    assert_selector "h1", text: "Resumes"
  end

  test "creating a Resume" do
    visit resumes_url
    click_on "New Resume"

    fill_in "Title", with: @resume.Title
    fill_in "Attachment", with: @resume.attachment
    fill_in "Category", with: @resume.category
    fill_in "Price", with: @resume.price
    fill_in "Year", with: @resume.year
    click_on "Create Resume"

    assert_text "Resume was successfully created"
    click_on "Back"
  end

  test "updating a Resume" do
    visit resumes_url
    click_on "Edit", match: :first

    fill_in "Title", with: @resume.Title
    fill_in "Attachment", with: @resume.attachment
    fill_in "Category", with: @resume.category
    fill_in "Price", with: @resume.price
    fill_in "Year", with: @resume.year
    click_on "Update Resume"

    assert_text "Resume was successfully updated"
    click_on "Back"
  end

  test "destroying a Resume" do
    visit resumes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resume was successfully destroyed"
  end
end
