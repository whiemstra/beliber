require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(username: "whitney",
      password: "hello123")
  end

  test "user is valid" do
    assert @user.valid?
  end

  test "user is invalid without a username" do
    @user.username = nil
    assert @user.invalid?
  end

  test "user is invalid without a password" do
    @user.password = nil
    assert @user.invalid?
  end
end
