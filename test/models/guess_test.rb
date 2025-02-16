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
require "test_helper"

class GuessTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
