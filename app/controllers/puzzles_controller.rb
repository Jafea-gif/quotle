class PuzzlesController < ApplicationController
  before_action :set_puzzle, only: %i[ show  ]
  before_action :authenticate_user!

  # GET /puzzles or /puzzles.json
  def index
    @puzzle = Puzzle.find_by(publication_date: Date.today)
  end

  # GET /puzzles/1 or /puzzles/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puzzle
      @puzzle = Puzzle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def puzzle_params
      params.require(:puzzle).permit(:publication_date, :author)
    end
end
