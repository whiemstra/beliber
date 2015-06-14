require 'test_helper'

class CategoryCreationTest < ActionDispatch::IntegrationTest

  test "a category can be created" do
    visit new_category_path
    fill_in "Title", with: "Recreational"
    click_button "Create New Category"
    assert page.has_content?("Your New Category!")
  end
end
