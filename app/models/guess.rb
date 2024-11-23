# == Schema Information
#
# Table name: guesses
#
#  id          :integer          not null, primary key
#  correct     :boolean          default(FALSE)
#  input_guess :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#  word_id     :integer          not null
#
# Indexes
#
#  index_guesses_on_user_id  (user_id)
#  index_guesses_on_word_id  (word_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#  word_id  (word_id => words.id)
#
class Guess < ApplicationRecord
  belongs_to :user
  belongs_to :word

  def correct? 
    input_guess.upcase == word.name.upcase
  end

  def check_letters
    guess_letters = input_guess.upcase.split("")
    word_letters = word.name.upcase.split("")
    letter_classes = []
    guess_letters.each_with_index do |letter,index| 
      if letter == word_letters[index]
        letter_classes << "correct"
      elsif word_letters.include?(letter)
        letter_classes << "misplaced"
      else
        letter_classes << "wrong"
      end

    end 
  letter_classes
  end
  
  def prettify
    html_string = ''
    guess_letters = input_guess.downcase.split('')
    letter_classes = check_letters
    guess_letters.each_with_index do |letter, ind|
      html_string.concat("<span class='", letter_classes[ind], "'>", letter, "</span>")
    end
    html_string.html_safe
  end
end
