class GuessesController < ApplicationController

  # POST /guesses or /guesses.json
  def create
    @guess = Guess.create(guess_params)
    if @guess.correct?
      @guess.update(correct:true)
      redirect_to @guess.word.puzzle, notice: "GOT IT"
    else
      redirect_to @guess.word, notice: "Try again"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guess
      @guess = Guess.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def guess_params
      params.require(:guess).permit(:user_id, :word_id, :input_guess)
    end
end
