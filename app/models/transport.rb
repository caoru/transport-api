class Transport < ApplicationRecord
  belongs_to :car
  belongs_to :user
  belongs_to :item
  belongs_to :transport_type
  belongs_to :transport_state

  validates_presence_of :date, :departure_time, :departure_bay_id, :departure_bay_name, :car_id, :user_id, :item_id, :transport_type_id, :transport_state_id
end
