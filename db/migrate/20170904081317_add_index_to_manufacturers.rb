class AddIndexToManufacturers < ActiveRecord::Migration[5.1]
  def change
    add_index :manufacturers, :name, unique: true
  end
end
