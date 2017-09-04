class CreateTransportStates < ActiveRecord::Migration[5.1]
  def change
    create_table :transport_states do |t|
      t.string :name

      t.timestamps
    end
  end
end
