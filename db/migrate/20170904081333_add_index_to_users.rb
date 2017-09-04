class AddIndexToUsers < ActiveRecord::Migration[5.1]
  def change
    add_index :users, :cellular_phone, unique: true
  end
end
