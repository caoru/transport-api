class AddIndexToItem < ActiveRecord::Migration[5.1]
  def change
    add_index :items, :name, unique: true
  end
end
