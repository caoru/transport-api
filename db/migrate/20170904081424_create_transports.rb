class CreateTransports < ActiveRecord::Migration[5.1]
  def change
    create_table :transports do |t|
      t.timestamp :date
      t.timestamp :departure_time
      t.timestamp :departure_confirm_time
      t.timestamp :arrival_time
      t.timestamp :arrival_confirm_time
      t.bigint :departure_bay_id
      t.string :departure_bay_name
      t.bigint :arrival_bay_id
      t.string :arrival_bay_name
      t.references :car, foreign_key: true
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.references :transport_type, foreign_key: true
      t.references :transport_state, foreign_key: true

      t.timestamps
    end
  end
end
