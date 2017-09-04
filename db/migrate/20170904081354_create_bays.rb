class CreateBays < ActiveRecord::Migration[5.1]
  def change
    create_table :bays do |t|
      t.string :name
      t.string :province
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
