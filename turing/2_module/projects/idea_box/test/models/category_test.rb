require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = Category.new(title: "Recreational")
  end

  test "category is valid" do
    assert @category.valid?
  end

  test "category is invalid without a title" do
    @category.title = nil
    assert @category.invalid?
  end
end
