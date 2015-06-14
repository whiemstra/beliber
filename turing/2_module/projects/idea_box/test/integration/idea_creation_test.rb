require 'test_helper'

class IdeaCreationTest < ActionDispatch::IntegrationTest

  test "an idea can be created" do
    visit new_idea_path
    fill_in "Title", with: "Build a Sailboat"
    fill_in "Body", with: "Buy lots of wood and tools."
    click_button "Create Idea"
    assert page.has_content?("Your Fabulous Idea!")
  end

  # test "idea references a user" do
  #
  # end
  #
  # test "idea is associated with user" do
  #
  # end
end
