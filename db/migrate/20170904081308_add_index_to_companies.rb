class AddIndexToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_index :companies, :registration_number, unique: true
  end
end
