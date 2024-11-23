class ConnectWordtoPuzzel < ActiveRecord::Migration[7.2]
  def change
  add_reference :words, :puzzle
  end
end
