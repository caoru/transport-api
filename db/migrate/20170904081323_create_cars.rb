class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :license_number
      t.string :model
      t.float :size
      t.references :manufacturer, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
