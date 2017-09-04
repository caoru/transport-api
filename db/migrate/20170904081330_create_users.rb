class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :cellular_phone
      t.string :password_digest
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
