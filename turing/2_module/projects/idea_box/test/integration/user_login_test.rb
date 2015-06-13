require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest

  test "existing user can log in" do
    user = User.create!(username: "Whitney", password: "pa$$word")

    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: "pa$$word"
    click_button "Login"

    assert page.has_content?("Welcome, Whitney!")
  end

  test "non-existing user cannot log in" do
    visit login_path
    fill_in "Username", with: "non-existing-user"
    fill_in "Password", with: "no-password"
    click_button "Login"

    assert page.has_no_content?("Welcome, Whitney!")
    assert page.has_content?('Username and/or password are not correct.')
  end

  test "existing user with bad username cannot log in" do
    user = User.create!(username: "Whitney", password: "pa$$word")

    visit login_path
    fill_in "Username", with: "Justin"
    fill_in "Password", with: "pa$$word"
    click_button "Login"

    assert page.has_no_content?("Welcome, Whitney!")
    assert page.has_content?('Username and/or password are not correct.')
  end


  test "existing user with bad password cannot log in" do
    user = User.create!(username: "Whitney", password: "pa$$word")

    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: "password"
    click_button "Login"

    assert page.has_no_content?("Welcome, Whitney!")
    assert page.has_content?('Username and/or password are not correct.')
  end


end
