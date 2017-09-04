class CreateLoginHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :login_histories do |t|
      t.timestamp :date
      t.timestamp :login_time
      t.timestamp :logout_time
      t.references :car, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
