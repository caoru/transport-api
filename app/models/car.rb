class Car < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :company

  has_many :logins, foreign_key: :car_id
  has_many :login_histories, foreign_key: :car_id
  has_many :transports, foreign_key: :car_id
  
  validates_presence_of :license_number, :model, :size, :manufacturer_id, :company_id
end
