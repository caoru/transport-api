class Company < ApplicationRecord
  has_many :cars, foreign_key: :company_id
  has_many :users, foreign_key: :company_id

  validates_presence_of :name, :registration_number, :phone
end
