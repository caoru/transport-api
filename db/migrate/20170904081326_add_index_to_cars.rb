class AddIndexToCars < ActiveRecord::Migration[5.1]
  def change
    add_index :cars, [:license_number, :company_id], unique: true
  end
end
