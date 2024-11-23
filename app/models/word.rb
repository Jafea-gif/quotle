# == Schema Information
#
# Table name: words
#
#  id         :integer          not null, primary key
#  name       :string
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  puzzle_id  :integer
#
# Indexes
#
#  index_words_on_puzzle_id  (puzzle_id)
#
class Word < ApplicationRecord
    belongs_to :puzzle
    has_many :guesses
    
        def guessed? 
        guesses.find_by(correct:true).present?
        end

end
