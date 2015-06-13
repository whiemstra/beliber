require 'test_helper'

class UserLogoutTest < ActionDispatch::IntegrationTest

  test "logged in user can log out" do
    user = User.create(username: "Whitney", password: "password")

    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: "password"
    click_button "Login"

    assert page.has_content?("Welcome, Whitney")

    click_on "Logout"

    visit user_path(user)
    assert page.has_no_content?("Welcome, Whitney")
    assert_equal login_path, current_path
    refute_equal user_path(user), current_path
  end

end
