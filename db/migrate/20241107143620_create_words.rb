class CreateWords < ActiveRecord::Migration[7.2]
  def change
    create_table :words do |t|
      t.string :name
      t.integer :order

      t.timestamps
    end
  end
end
