class Manufacturer < ApplicationRecord
  has_many :cars, foreign_key: :manufacturer_id

  validates_presence_of :name
end
