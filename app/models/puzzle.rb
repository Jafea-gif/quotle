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
class Puzzle < ApplicationRecord
    has_many :words
end
