require 'test_helper'

class UserCreationTest < ActionDispatch::IntegrationTest
  test "a users can be created" do
    visit new_user_path
    fill_in "Username", with: "Whitney"
    fill_in "Password", with: "hello123"
    click_button "Create Account"

    assert page.has_content?("Welcome, Whitney")
  end
end
