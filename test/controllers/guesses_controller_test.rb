require "test_helper"

class GuessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guess = guesses(:one)
  end

  test "should create guess" do
    assert_difference("Guess.count") do
      post guesses_url, params: { guess: { input_guess: @guess.input_guess, user_id: @guess.user_id, word_id: @guess.word_id } }
    end

    assert_redirected_to guess_url(Guess.last)
  end
end
