# == Schema Information
#
# Table name: puzzles
#
#  id               :integer          not null, primary key
#  publication_date :date
#  author           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require "test_helper"

class PuzzleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
