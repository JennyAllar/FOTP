class CreateList < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :piece_1
      t.string :piece_2
      t.integer :cycle_length
    end
  end
end
