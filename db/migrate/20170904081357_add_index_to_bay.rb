class AddIndexToBay < ActiveRecord::Migration[5.1]
  def change
    add_index :bays, :name, unique: true
  end
end
