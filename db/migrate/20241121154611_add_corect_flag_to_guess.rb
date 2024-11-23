class AddCorectFlagToGuess < ActiveRecord::Migration[7.2]
  def change 
    add_column :guesses, :correct, :boolean, default:false
  end
end
