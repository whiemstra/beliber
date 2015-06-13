require 'test_helper'

class IdeaTest < ActiveSupport::TestCase
  def setup
    @idea = Idea.new(title: "Build a Sailboat", user_id: 1, category_id: 2)
  end

  test "idea is valid" do
    assert @idea.valid?
  end

  test "idea is invalid without a title" do
    @idea.title = nil
    assert @idea.invalid?
  end

  test "idea is invalid without an user_id" do
    @idea.user_id = nil
    assert @idea.invalid?
  end

  test "idea is invalid without an category_id" do
    @idea.category_id = nil
    assert @idea.invalid?
  end
end
