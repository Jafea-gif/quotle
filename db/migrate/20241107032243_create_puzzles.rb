class CreatePuzzles < ActiveRecord::Migration[7.2]
  def change
    create_table :puzzles do |t|
      t.date :publication_date
      t.string :author

      t.timestamps
    end
  end
end
