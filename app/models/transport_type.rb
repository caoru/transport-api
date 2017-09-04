class TransportType < ApplicationRecord
  has_many :transports, foreign_key: :transport_type_id

  validates_presence_of :name
end
