class Transport < ApplicationRecord
  belongs_to :car
  belongs_to :user
  belongs_to :item
  belongs_to :transport_type
end
