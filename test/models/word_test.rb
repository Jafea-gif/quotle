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
require "test_helper"

class WordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
