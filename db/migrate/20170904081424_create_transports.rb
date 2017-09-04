class CreateTransports < ActiveRecord::Migration[5.1]
  def change
    create_table :transports do |t|
      t.timestamp :date
      t.timestamp :departure_time
      t.timestamp :arrival_time
      t.integer :departure_bay
      t.string :departure_bay_name
      t.integer :arrival_bay
      t.string :arrival_bay_name
      t.references :car, foreign_key: true
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.references :transport_type, foreign_key: true

      t.timestamps
    end
  end
end
