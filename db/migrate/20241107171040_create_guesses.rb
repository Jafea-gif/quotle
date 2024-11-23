class CreateGuesses < ActiveRecord::Migration[7.2]
  def change
    create_table :guesses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :word, null: false, foreign_key: true
      t.string :input_guess

      t.timestamps
    end
  end
end
