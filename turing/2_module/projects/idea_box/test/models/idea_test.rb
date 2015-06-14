require 'test_helper'

class IdeaTest < ActiveSupport::TestCase
  def setup
    # @user = User.new(username: "justin", password: "hello123")
    @idea = Idea.new(title: "Build a Sailboat", body: "Buy wood")    #user_id: 1, category_id: 2
  end

  test "idea is valid" do
    assert @idea.valid?
  end

  test "idea is invalid without a title" do
    @idea.title = nil
    assert @idea.invalid?
  end

  test "idea is invalid without a body" do
    @idea.body = nil
    assert @idea.invalid?
  end

  # test "idea is invalid without an user_id" do
  #   @idea.user_id = nil
  #   assert @idea.invalid?
  # end
  #
  # test "idea must associate with a user" do
  #   assert_respond_to(@idea, :user)
  # end
  #
  # test "idea is invalid without an category_id" do
  #   @idea.category_id = nil
  #   assert @idea.invalid?
  # end

  # test "idea must associate with a category" do
  #   assert_respond_to(@idea, :category)
  # end
end
