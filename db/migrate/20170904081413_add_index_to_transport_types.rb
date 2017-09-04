class AddIndexToTransportTypes < ActiveRecord::Migration[5.1]
  def change
    add_index :transport_types, :name, unique: true
  end
end
