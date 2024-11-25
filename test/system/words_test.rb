require "application_system_test_case"

class WordsTest < ApplicationSystemTestCase
  setup do
    @word = words(:one)
  end

  # test "visiting the index" do
  #   visit words_url
  #   assert_selector "h1", text: "Words"
  # end
end
