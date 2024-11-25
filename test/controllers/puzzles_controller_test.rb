require "test_helper"

class PuzzlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @puzzle = puzzles(:one)
  end

  test "should get index" do
    get puzzles_url
    assert_response :success
  end

  test "should show puzzle" do
    get puzzle_url(@puzzle)
    assert_response :success
  end
  
end
