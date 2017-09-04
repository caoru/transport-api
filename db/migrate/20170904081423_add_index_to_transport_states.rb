class AddIndexToTransportStates < ActiveRecord::Migration[5.1]
  def change
    add_index :transport_states, :name, unique: true
  end
end
