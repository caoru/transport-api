class TransportState < ApplicationRecord
  has_many :transports, foreign_key: :transport_state_id

  validates_presence_of :name
end
