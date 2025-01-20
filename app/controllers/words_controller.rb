class WordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_word, only: %i[ show ]

  # GET /words/1 or /words/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word
      @word = Word.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def word_params
      params.require(:word).permit(:name, :order)
    end
end
